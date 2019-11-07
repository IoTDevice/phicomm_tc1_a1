#ifndef __USER_MQTT_CLIENT_H_
#define __USER_MQTT_CLIENT_H_


#include "mico.h"

#define MQTT_CLIENT_KEEPALIVE   30

#define MQTT_CMD_TIMEOUT        5000  // 5s
#define MQTT_YIELD_TMIE         5000  // 5s


extern OSStatus user_mqtt_init(void);
extern OSStatus user_mqtt_send( char *arg );
extern bool user_mqtt_isconnect(void);
extern OSStatus user_mqtt_send_slot_state(unsigned char slot_id );
extern OSStatus user_mqtt_send_tc1_state(void);
extern OSStatus user_mqtt_hass_auto_slot( char slot_id );
extern OSStatus user_mqtt_hass_power( void );
extern OSStatus user_mqtt_hass_auto_power( void );

#endif
