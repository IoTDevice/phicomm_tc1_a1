#ifndef __MAIN_H_
#define __MAIN_H_

#include "mico.h"
#include "MiCOKit_EXT.h"

#define VERSION "v0.0.0"

#define TYPE 1
#define TYPE_NAME "tc1"

#define SETTING_MQTT_STRING_LENGTH_MAX  32      //蹇呴』 4 瀛楄妭瀵归綈銆�

#define SLOT_NAME_LENGTH 32
#define SLOT_NUM 6              //鎻掑骇鏁伴噺
#define SLOT_TIME_TASK_NUM 5    //姣忎釜鎻掑骇鏈�澶�5缁勫畾鏃朵换鍔�

#define Led         MICO_GPIO_5
#define Button      MICO_GPIO_23
#define POWER      MICO_GPIO_15

#define Relay_ON     1
#define Relay_OFF     0

#define Relay_0     MICO_GPIO_6
#define Relay_1     MICO_GPIO_8
#define Relay_2     MICO_GPIO_10
#define Relay_3     MICO_GPIO_7
#define Relay_4     MICO_GPIO_9
#define Relay_5     MICO_GPIO_18
#define Relay_NUM   SLOT_NUM

//鑷畾涔�
#define ZTC_NAME "tc1_%s"                       //璁惧鍚嶇О妯℃澘锛岄粯璁ょ敓鎴愮殑璁惧鍚嶇О涓簍c1_{{MAC鍦板潃}}锛孭S锛氬淇敼瑕佷繚鐣�%s锛屽皢濉厖MAC鍦板潃
#define CONFIG_SSID "wifi_ssid"                      //WiFi鍚嶇О
#define CONFIG_USER_KEY "wifi_password"              //WiFi瀵嗙爜
#define CONFIG_MQTT_IP "192.168.0.2"                //MQTT鏈嶅姟鍣↖P
#define CONFIG_MQTT_PORT 43083                   //MQTT鏈嶅姟鍣ㄧ鍙ｏ紝鏁板��
#define CONFIG_MQTT_USER "mqtt_user"            //MQTT鐢ㄦ埛鍚�
#define CONFIG_MQTT_PASSWORD "mqtt_password"    //MQTT瀵嗙爜
#define STATE_UPDATE_INTERVAL 10000             //鍔熺巼涓婃姤闂撮殧锛屽崟浣峬s锛屾暟鍊�
#define MQTT_CLIENT_SUB_TOPIC   "cmnd/%s"       //鍛戒护鎺у埗鎺ユ敹topic妯℃澘锛�%s鍙朲TC_NAME锛堥粯璁c1_{{MAC鍦板潃}}锛夛紝PS锛氳鍕夸慨鏀规澶勶紝鍙慨鏀筞TC_NAME
#define MQTT_CLIENT_PUB_TOPIC   "stat/%s"       //鐘舵�佷俊鎭痶opic妯℃澘锛�%s鍙朲TC_NAME锛堥粯璁c1_{{MAC鍦板潃}}锛夛紝PS锛氳鍕夸慨鏀规澶勶紝鍙慨鏀筞TC_NAME
#define USER_CONFIG_VERSION 2                   //OTA娉ㄦ剰淇敼涓轰笌涓婃鍥轰欢涓嶅悓锛岃Е鍙戦噸杞絯ifi銆乵qtt绛夐厤缃俊鎭�

//鐢ㄦ埛淇濆瓨鍙傛暟缁撴瀯浣�
typedef struct
{
    char mqtt_ip[SETTING_MQTT_STRING_LENGTH_MAX];   //mqtt service ip
    int mqtt_port;        //mqtt service port
    char mqtt_user[SETTING_MQTT_STRING_LENGTH_MAX];     //mqtt service user
    char mqtt_password[SETTING_MQTT_STRING_LENGTH_MAX];     //mqtt service user
//     char mqtt_device_id[SETTING_MQTT_STRING_LENGTH_MAX];        //mqtt service user  device name

    char version;
    char slot[SLOT_NUM];
    char user[maxNameLen];
} user_config_t;

extern char first_sntp;
extern uint32_t sntp_count;

extern uint32_t run_time;
extern char strMac[16];
extern uint32_t power;
extern system_config_t * sys_config;
extern user_config_t * user_config;

extern mico_gpio_t Relay[Relay_NUM];

#endif
