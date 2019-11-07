#define os_log(format, ...)  custom_log("OTA", format, ##__VA_ARGS__)

#include "mico.h"
#include "ota_server/ota_server.h"
#include "main.h"
#include "user_mqtt_client.h"
#include "user_function.h"

static int8_t step_progress = 0;
static int8_t last_progress = 0;

static void ota_server_status_handler( OTA_STATE_E state, float progress )
{
    int8_t int_progress = (int) progress;
    step_progress = int_progress / 5;
    char str[64] = { 0 };
    switch ( state )
    {
        case OTA_LOADING:
            os_log("ota server is loading, progress %.2f%%", progress);
            if ( step_progress != last_progress){
                last_progress = step_progress;
                sprintf( str, "{\"mac\":\"%s\",\"ota_progress\":%i}", strMac, step_progress*5 );
            }
            break;
        case OTA_SUCCE:
            os_log("ota server daemons success");
            sprintf( str, "{\"mac\":\"%s\",\"ota_progress\":success}", strMac );
            last_progress = 0;
            step_progress = 0;
            break;
        case OTA_FAIL:
            os_log("ota server daemons failed");
            sprintf( str, "{\"mac\":\"%s\",\"ota_progress\":-1}", strMac );
            last_progress = 0;
            step_progress = 0;
            break;
        default:
            break;
    }
    if ( str[0] > 0 )
    {
        user_mqtt_send( str );
        str[0] = 0;
    }
}

void user_ota_start( char *url, char *md5 )
{
    os_log("ready to ota:%s",url);
    ota_server_start( url, md5, ota_server_status_handler );
}