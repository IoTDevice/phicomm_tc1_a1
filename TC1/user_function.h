
#ifndef __USER_FUNCTION_H_
#define __USER_FUNCTION_H_


#include "mico.h"
#include "MiCOKit_EXT.h"

void user_send( int udp_flag, char *s );
void user_function_cmd_received(char *mqtt_topic , char *mqtt_data);
unsigned char strtohex(char a, char b);


#endif
