#include "main.h"

#include "user_gpio.h"
#include "user_wifi.h"
#include "user_sntp.h"
#include "user_power.h"
#include "user_mqtt_client.h"
#include "user_function.h"
#include "http_server/app_httpd.h"

//mdns
#include "mico.h"
#include "system_internal.h"
#include "platform_config.h"
#include "StringUtils.h"

#define os_log(format, ...)  custom_log("TC1", format, ##__VA_ARGS__)

char first_sntp = 0;    //sntp鏍℃椂鎴愬姛鏍囧織浣�
uint32_t sntp_count=0;
uint32_t run_time=0;
char strMac[16] = { 0 };
uint32_t power=0;

system_config_t * sys_config;
user_config_t * user_config;

mico_gpio_t Relay[Relay_NUM] = { Relay_0, Relay_1, Relay_2, Relay_3, Relay_4, Relay_5 };

/* MICO system callback: Restore default configuration provided by application */
//void appRestoreDefault_callback( void * const user_config_data, uint32_t size )
//{
//    int i;
//    UNUSED_PARAMETER( size );
//
//    mico_system_context_get( )->micoSystemConfig.name[0] = 1;   //鍦ㄤ笅娆￠噸鍚椂浣跨敤榛樿鍚嶇О
//    mico_system_context_get( )->micoSystemConfig.name[1] = 0;
//
//    user_config_t* userConfigDefault = user_config_data;
//
//    // userConfigDefault->user[0] = 0;
//    // userConfigDefault->mqtt_ip[0] = 0;
//    // userConfigDefault->mqtt_port = 0;
//    // userConfigDefault->mqtt_user[0] = 0;
//    // userConfigDefault->mqtt_password[0] = 0;
//
//    sprintf(userConfigDefault->mqtt_ip, CONFIG_MQTT_IP);
//    userConfigDefault->mqtt_port = CONFIG_MQTT_PORT;
//    sprintf(userConfigDefault->mqtt_user, CONFIG_MQTT_USER);
//    sprintf(userConfigDefault->mqtt_password, CONFIG_MQTT_PASSWORD);
//    //鍒濆鍖杦ifi鍙婂瘑鐮�
//    strcpy( mico_system_context_get( )->micoSystemConfig.ssid, CONFIG_SSID );
//    strcpy( mico_system_context_get( )->micoSystemConfig.user_key, CONFIG_USER_KEY );
//    mico_system_context_get( )->micoSystemConfig.user_keyLength = strlen( CONFIG_USER_KEY );
//
//    userConfigDefault->version = USER_CONFIG_VERSION;
//    for ( i = 0; i < SLOT_NUM; i++ )
//    {
//        userConfigDefault->slot[i] = 1;
//
//    }
////    mico_system_context_update( sys_config );
//
//}

int application_start( void )
{
    int i;
    os_log( "Start %s",VERSION );

    uint8_t main_num=0;
    uint32_t power_last = 0xffffffff;
    OSStatus err = kNoErr;

//    for ( i = 0; i < Relay_NUM; i++ )
//    {
//        MicoGpioOutputLow( Relay[(i)] );
//        MicoGpioInitialize( Relay[i], OUTPUT_PUSH_PULL );
//        MicoGpioOutputLow( Relay[(i)] );
//        //MicoGpioOutputHigh(Relay[i]);
//    }
    /* Create mico system context and read application's config data from flash */
    sys_config = mico_system_context_init( sizeof(user_config_t) );
    user_config = ((system_context_t *) sys_config)->user_config_data;
    require_action( user_config, exit, err = kNoMemoryErr );

    err = mico_system_init( sys_config );
    require_noerr( err, exit );

//    HTTP Srever
    app_httpd_start();

    MicoGpioInitialize( (mico_gpio_t) Button, INPUT_PULL_UP );
    if ( !MicoGpioInputGet( Button ) )
    {   //寮�鏈烘椂鎸夐挳鐘舵��
        os_log( "wifi_start_easylink" );
        wifi_status = WIFI_STATE_NOEASYLINK;  //wifi_init涓惎鍔╡asylink
    }

    MicoGpioInitialize( (mico_gpio_t) Led, OUTPUT_PUSH_PULL );
    for ( i = 0; i < Relay_NUM; i++ )
    {
        MicoGpioInitialize( Relay[i], OUTPUT_PUSH_PULL );
        user_relay_set( i, user_config->slot[i] );
    }
    MicoSysLed( 0 );

    if ( user_config->version != USER_CONFIG_VERSION)
    {
        os_log( "WARNGIN: user params restored!" );
        err = mico_system_context_restore( sys_config );
        require_noerr( err, exit );
    }

    wifi_init( );
    mico_thread_msleep(1000);

    IPStatusTypedef para;
    micoWlanGetIPStatus( &para, Station );
    os_log( "micoWlanGetIPStatus:%d", micoWlanGetIPStatus( &para, Station ));   //mac璇诲嚭鏉ュ叏閮ㄦ槸0??!!!
    strcpy( strMac, para.mac );
    os_log( "result:%s",strMac );
    os_log( "result:%s",para.mac );

    if ( sys_config->micoSystemConfig.name[0] == 1 )
    {
        sprintf( sys_config->micoSystemConfig.name, ZTC_NAME, strMac );
    }

    os_log( "user:%s",user_config->user );
    os_log( "device name:%s",sys_config->micoSystemConfig.name );
    os_log( "mqtt_ip:%s",user_config->mqtt_ip );
    os_log( "mqtt_port:%d",user_config->mqtt_port );
    os_log( "mqtt_user:%s",user_config->mqtt_user );
    os_log( "mqtt_password:%s",user_config->mqtt_password );

    os_log( "version:%d",user_config->version );
//    for ( i = 0; i < SLOT_NUM; i++ )
//    {
//        os_log("slot_%d:",i);
//        os_log("\tname:%s:",user_config->slot[i].name);
//        for ( j = 0; j < SLOT_TIME_TASK_NUM; j++ )
//        {
//            os_log("\t\ton:%d\t %02d:%02d repeat:0x%X",user_config->slot[i].task[j].on,
//                user_config->slot[i].task[j].hour,user_config->slot[i].task[j].minute,
//                user_config->slot[i].task[j].repeat);
//        }
//    }


    // user_udp_init( );
    key_init( );
//    err = user_mqtt_init( );
//    require_noerr( err, exit );
//    sntp_init();
    user_power_init();

    /* start http server thread */
//      app_httpd_start();
    while ( 1 )
    {
        main_num++;
        //鍙戦�佸姛鐜囨暟鎹�
        if ( power_last != power || main_num>4 )
        {
            power_last = power;
            main_num =0;
            // uint8_t *power_buf = NULL;
            // power_buf = malloc( 128 );
            // if ( power_buf != NULL )
            // {
            //     sprintf( power_buf, "{\"power\":\"%d.%d\",\"run_time\":%d}", power / 10, power % 10, run_time );
            //     user_mqtt_send( power_buf );
            //     free( power_buf );
            // }
            user_mqtt_hass_power( );
        }
        mico_thread_msleep(STATE_UPDATE_INTERVAL);
    }
    exit:
    os_log("application_start ERROR!");
    return 0;
}


