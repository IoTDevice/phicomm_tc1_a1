/**
 ******************************************************************************
 * @file    app_https.c
 * @author  QQ DING
 * @version V1.0.0
 * @date    1-September-2015
 * @brief   The main HTTPD server initialization and wsgi handle.
 ******************************************************************************
 *
 *  The MIT License
 *  Copyright (c) 2016 MXCHIP Inc.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is furnished
 *  to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 *  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
 *  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 ******************************************************************************
 */

#include <httpd.h>
#include <http_parse.h>
#include <http-strings.h>

#include "cJSON/cJSON.h"

#include "mico.h"
#include "httpd_priv.h"
#include "app_httpd.h"

#include "main.h"

#define app_httpd_log(M, ...) custom_log("apphttpd", M, ##__VA_ARGS__)

#define HTTPD_HDR_DEFORT (HTTPD_HDR_ADD_SERVER|HTTPD_HDR_ADD_CONN_CLOSE|HTTPD_HDR_ADD_PRAGMA_NO_CACHE)
static bool is_http_init;
static bool is_handlers_registered;
struct httpd_wsgi_call g_app_handlers[];

static int web_send_wifisetting_page(httpd_request_t *req)
{
  OSStatus err = kNoErr;
  
  err = httpd_send_all_header(req, HTTP_RES_200, sizeof(wifisetting), HTTP_CONTENT_HTML_STR);
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting headers.") );
  
  err = httpd_send_body(req->sock, wifisetting, sizeof(wifisetting));
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting body.") );
  
exit:
  return err; 
}

static int switchChange(httpd_request_t *req)
{
  OSStatus err = kNoErr;

  char *slot0 = malloc(1);
  char *slot1 = malloc(1);
  char *slot2 = malloc(1);
  char *slot3 = malloc(1);
  char *slot4 = malloc(1);
  char *slot5 = malloc(1);

  err = httpd_get_tag_from_url(req, "slot0", slot0, 1);
  err = httpd_get_tag_from_url(req, "slot1", slot1, 1);
  err = httpd_get_tag_from_url(req, "slot2", slot2, 1);
  err = httpd_get_tag_from_url(req, "slot3", slot3, 1);
  err = httpd_get_tag_from_url(req, "slot4", slot4, 1);
  err = httpd_get_tag_from_url(req, "slot5", slot5, 1);
  require_noerr( err, exit );

  char *send_buf = (char *) malloc( strlen("{\"slot0\":0,\"slot1\":0,\"slot2\":0,\"slot3\":0,\"slot4\":0,\"slot5\":0}") );
  sprintf( send_buf, "{\"slot0\":%s,\"slot1\":%s,\"slot2\":%s,\"slot3\":%s,\"slot4\":%s,\"slot5\":%s}", slot0, slot1, slot2, slot3, slot4, slot5 );

  free(slot0);
  free(slot1);
  free(slot2);
  free(slot3);
  free(slot4);
  free(slot5);

  cJSON * pJsonRoot = cJSON_Parse( send_buf );
  cJSON *json_send = cJSON_CreateObject( );
  unsigned char i;
  bool update_user_config_flag = false;
  for ( i = 0; i < SLOT_NUM; i++ )
  {
      if ( json_slot_analysis( i, pJsonRoot, json_send ) )
          update_user_config_flag = true;
  }

  err = httpd_send_all_header(req, HTTP_RES_200, strlen(send_buf), HTTP_CONTENT_JSON_STR);
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting headers.") );

  err = httpd_send_body(req->sock, send_buf, strlen(send_buf));
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting body.") );
exit:
  return err;
}

static int status(httpd_request_t *req)
{
  OSStatus err = kNoErr;

  char *power_temp_buf = malloc( 16 );

  sprintf( power_temp_buf, "%ld.%ld", power / 10, power % 10 );

  char *send_buf = (char *) malloc( strlen("{\"slot0\":0,\"slot1\":0,\"slot2\":0,\"slot3\":0,\"slot4\":0,\"slot5\":0,\"power\":}") + strlen(power_temp_buf) );

  sprintf( send_buf, "{\"slot0\":%d,\"slot1\":%d,\"slot2\":%d,\"slot3\":%d,\"slot4\":%d,\"slot5\":%d,\"power\":%s}", user_config->slot[0], user_config->slot[1], user_config->slot[2], user_config->slot[3], user_config->slot[4], user_config->slot[5],power_temp_buf );

  free(power_temp_buf);
  err = httpd_send_all_header(req, HTTP_RES_200, strlen(send_buf), HTTP_CONTENT_JSON_STR);
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting headers.") );

  err = httpd_send_body(req->sock, send_buf, strlen(send_buf));
  free(send_buf);
  require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisetting body.") );

exit:
  return err;
}

static int web_send_result_page(httpd_request_t *req)
{
  OSStatus err = kNoErr;
  bool para_succ = false;
  int buf_size = 512;
  char *buf;
  char value_ssid[maxSsidLen];
  char value_pass[maxKeyLen];
  char value_user[maxNameLen];
  mico_Context_t* context = NULL;
  
  context = mico_system_context_get( );
  
  buf = malloc(buf_size);
  
  err = httpd_get_data(req, buf, buf_size);
  require_noerr( err, Save_Out );
  
  err = httpd_get_tag_from_post_data(buf, "SSID", value_ssid, maxSsidLen);
  require_noerr( err, Save_Out );
  
  err = httpd_get_tag_from_post_data(buf, "USER", value_user, maxNameLen);
  require_noerr( err, Save_Out );

  if(!strncmp(value_ssid, "\0", 1))
    goto Save_Out;
  if(!strncmp(value_user, "\0", 1))
    goto Save_Out;
  
  strncpy(context->micoSystemConfig.ssid, value_ssid, maxSsidLen);
  strncpy(user_config->user, value_user, maxNameLen);
  
  err = httpd_get_tag_from_post_data(buf, "PASS", value_pass, maxKeyLen);
  require_noerr( err, Save_Out );
  
  strncpy(context->micoSystemConfig.key, value_pass, maxKeyLen);
  strncpy(context->micoSystemConfig.user_key, value_pass, maxKeyLen);
  context->micoSystemConfig.keyLength = strlen(context->micoSystemConfig.key);
  context->micoSystemConfig.user_keyLength = strlen(context->micoSystemConfig.key);
  
  context->micoSystemConfig.channel = 0;
  memset(context->micoSystemConfig.bssid, 0x0, 6);
  context->micoSystemConfig.security = SECURITY_TYPE_AUTO;
  context->micoSystemConfig.dhcpEnable = true;
  
  para_succ = true;
  
Save_Out:
  
  if(para_succ == true)
  {
    err = httpd_send_all_header(req, HTTP_RES_200, sizeof(wifisuccess), HTTP_CONTENT_HTML_STR);
    require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisuccess headers.") );
    
    err = httpd_send_body(req->sock, wifisuccess, sizeof(wifisuccess));
    require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wifisuccess body.") );
    
    context->micoSystemConfig.configured = allConfigured;
    
    mico_system_context_update(context);
    
    mico_system_power_perform( context, eState_Software_Reset );
  }
  else
  {
    err = httpd_send_all_header(req, HTTP_RES_200, sizeof(wififail), HTTP_CONTENT_HTML_STR);
    require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wififail headers.") );
    
    err = httpd_send_body(req->sock, wififail, sizeof(wififail));
    require_noerr_action( err, exit, app_httpd_log("ERROR: Unable to send http wififail body.") );    
  }
  
exit:  
  if(buf) free(buf);
  return err; 
}

struct httpd_wsgi_call g_app_handlers[] = {
  {"/", HTTPD_HDR_DEFORT, 0, web_send_wifisetting_page, NULL, NULL, NULL},
  {"/result.htm", HTTPD_HDR_DEFORT, 0, NULL, web_send_result_page, NULL, NULL},
  {"/setting.htm", HTTPD_HDR_DEFORT, 0, web_send_wifisetting_page, NULL, NULL, NULL},
  {"/switch", HTTPD_HDR_DEFORT, 0, switchChange, NULL, NULL, NULL},
  {"/status", HTTPD_HDR_DEFORT, 0, status, NULL, NULL, NULL},
};

static int g_app_handlers_no = sizeof(g_app_handlers)/sizeof(struct httpd_wsgi_call);

static void app_http_register_handlers()
{
  int rc;
  rc = httpd_register_wsgi_handlers(g_app_handlers, g_app_handlers_no);
  if (rc) {
    app_httpd_log("failed to register test web handler");
  }
}

static int _app_httpd_start()
{
  OSStatus err = kNoErr;
  app_httpd_log("initializing web-services");
  
  /*Initialize HTTPD*/
  if(is_http_init == false) {
    err = httpd_init();
    require_noerr_action( err, exit, app_httpd_log("failed to initialize httpd") );
    is_http_init = true;
  }
  
  /*Start http thread*/
  err = httpd_start();
  if(err != kNoErr) {
    app_httpd_log("failed to start httpd thread");
    httpd_shutdown();
  }
exit:
  return err;
}

int app_httpd_start( void )
{
  OSStatus err = kNoErr;
  
  err = _app_httpd_start();
  require_noerr( err, exit ); 
  
  if (is_handlers_registered == false) {
    app_http_register_handlers();
    is_handlers_registered = true;
  }
  
exit:
  return err;
}

int app_httpd_stop()
{
  OSStatus err = kNoErr;
  
  /* HTTPD and services */
  app_httpd_log("stopping down httpd");
  err = httpd_stop();
  require_noerr_action( err, exit, app_httpd_log("failed to halt httpd") );
  
exit:
  return err;
}
