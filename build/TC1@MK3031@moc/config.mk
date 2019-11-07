MiCO_SDK_MAKEFILES           		+= ./mico-os/libraries/drivers/MiCODriverMFiAuth/MiCODriverMFiAuth.mk ./mico-os/platform/GCC/GCC.mk ./mico-os/libraries/utilities/json_c/json_c.mk ./mico-os/MiCO/security/Sodium/Sodium.mk ./mico-os/MiCO/security/SRP_6a/SRP_6a.mk ./mico-os/MiCO/system/easylink/aws/aws.mk ./mico-os/MiCO/system/easylink/MFi_WAC/MFi_WAC.mk ./mico-os/MiCO/system/qc_test/qc_test.mk ./mico-os/libraries/drivers/sensor/infrared_adc/infrared_adc.mk ./mico-os/libraries/drivers/sensor/light_adc/light_adc.mk ./mico-os/libraries/drivers/sensor/APDS9930/APDS9930.mk ./mico-os/libraries/drivers/sensor/DHT11/DHT11.mk ./mico-os/libraries/drivers/sensor/BME280/BME280.mk ./mico-os/libraries/drivers/rgb_led/P9813/P9813.mk ./mico-os/libraries/drivers/motor/dc_motor/dc_motor.mk ./mico-os/libraries/drivers/keypad/gpio_button/gpio_button.mk ./mico-os/libraries/drivers/display/VGM128064/VGM128064.mk ./mico-os/libraries/utilities/base64/base64.mk ./mico-os/platform/MCU/MW3xx/MW3xx.mk ./mico-os/libraries/utilities/utilities.mk ./mico-os/MiCO/security/security.mk ./mico-os/MiCO/system/system.mk ./mico-os/MiCO/core/core.mk ./mico-os/MiCO/net/mocIP/mico/mico.mk ./mico-os/MiCO/RTOS/mocOS/mico/mico.mk ./mico-os/libraries/drivers/MiCOKit_EXT/MiCOKit_EXT.mk ./mico-os/libraries/daemons/http_server/http_server.mk ./mico-os/libraries/utilities/url/url.mk ./mico-os/libraries/protocols/mqtt/mqtt.mk ./mico-os/libraries/protocols/SNTP/SNTP.mk ./mico-os/MiCO/MiCO.mk ./mico-os/MiCO/security/TLS/mocSSL/mocSSL.mk ./mico-os/MiCO/net/mocIP/mocIP.mk ./mico-os/MiCO/RTOS/mocOS/mocOS.mk ./mico-os/board/MK3031/MK3031.mk .//TC1/TC1.mk
TOOLCHAIN_NAME            		:= GCC
MiCO_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -Wl,-wrap,_malloc_r -Wl,-wrap,free -Wl,-wrap,realloc -Wl,-wrap,malloc -Wl,-wrap,calloc -Wl,-wrap,_free_r -Wl,-wrap,_realloc_r -mthumb -mcpu=cortex-m4 -Wl,-A,thumb -mlittle-endian -nostartfiles -Wl,--defsym,__STACKSIZE__=800 -L ./platform/MCU/MW3xx/GCC --specs=nano.specs -u _printf_float -L ./mico-os/board/MK3031
RESOURCE_CFLAGS					+= -mthumb -mcpu=cortex-m4 -mlittle-endian
MiCO_SDK_LINK_SCRIPT         		+= ./mico-os/platform/MCU/MW3xx/GCC/app_with_moc.ld
MiCO_SDK_LINK_SCRIPT_CMD    	 	+= -Wl,-T ./mico-os/platform/MCU/MW3xx/GCC/app_with_moc.ld
MiCO_SDK_PREBUILT_LIBRARIES 	 	+= ./mico-os/MiCO/system/easylink/MFi_WAC/Lib_MFi_WAC.Cortex-M4.GCC.release.a ./mico-os/MiCO/system/easylink/aws/aws.Cortex-M4.GCC.release.a ./mico-os/MiCO/security/SRP_6a/Lib_SRP6a.Cortex-M4.GCC.release.a ./mico-os/MiCO/security/Sodium/Lib_Sodium.Cortex-M4.GCC.release.a
MiCO_SDK_CERTIFICATES       	 	+= 
MiCO_SDK_PRE_APP_BUILDS      		+= 
MiCO_SDK_LINK_FILES          		+=                                                                        
MiCO_SDK_INCLUDES           	 	+=                                                      -I./mico-os/libraries/utilities/json_c/. -I./mico-os/MiCO/security/Sodium/inc -I./mico-os/MiCO/security/SRP_6a/inc -I./mico-os/MiCO/system/easylink/aws/. -I./mico-os/MiCO/system/qc_test/. -I./mico-os/libraries/drivers/sensor/infrared_adc/. -I./mico-os/libraries/drivers/sensor/light_adc/. -I./mico-os/libraries/drivers/sensor/APDS9930/. -I./mico-os/libraries/drivers/sensor/DHT11/. -I./mico-os/libraries/drivers/sensor/BME280/. -I./mico-os/libraries/drivers/rgb_led/P9813/. -I./mico-os/libraries/drivers/motor/dc_motor/. -I./mico-os/libraries/drivers/keypad/gpio_button/. -I./mico-os/libraries/drivers/display/VGM128064/. -I./mico-os/libraries/utilities/base64/. -I./mico-os/platform/MCU/MW3xx/. -I./mico-os/platform/MCU/MW3xx/.. -I./mico-os/platform/MCU/MW3xx/../.. -I./mico-os/platform/MCU/MW3xx/../../include -I./mico-os/platform/MCU/MW3xx/../../GCC -I./mico-os/platform/MCU/MW3xx/../../Cortex-M4 -I./mico-os/platform/MCU/MW3xx/../../Cortex-M4/CMSIS -I./mico-os/platform/MCU/MW3xx/interface -I./mico-os/platform/MCU/MW3xx/peripherals -I./mico-os/platform/MCU/MW3xx/peripherals/sdk/src/incl/sdk -I./mico-os/platform/MCU/MW3xx/peripherals/sdk/src/incl/platform/os/micortos -I./mico-os/platform/MCU/MW3xx/peripherals/sdk/src/incl/sdk/drivers -I./mico-os/platform/MCU/MW3xx/peripherals/sdk/src/incl/sdk/drivers/mw300 -I./mico-os/platform/MCU/MW3xx/peripherals/sdk/src/incl/sdk/drivers/mw300/regs -I./mico-os/libraries/utilities/. -I./mico-os/MiCO/security/Curve25519 -I./mico-os/MiCO/security/SHAUtils -I./mico-os/MiCO/core/. -I./mico-os/MiCO/core/../../platform/MCU/MW3xx/moc -I./mico-os/MiCO/net/mocIP/mico/. -I./mico-os/MiCO/RTOS/mocOS/mico/. -I./mico-os/libraries/drivers/MiCOKit_EXT/. -I./mico-os/libraries/drivers/MiCOKit_EXT/.. -I./mico-os/libraries/daemons/http_server/. -I./mico-os/libraries/utilities/url/. -I./mico-os/libraries/protocols/mqtt/. -I./mico-os/libraries/protocols/mqtt/mico -I./mico-os/libraries/protocols/mqtt/MQTTPacket -I./mico-os/libraries/protocols/SNTP/. -I./mico-os/MiCO/. -I./mico-os/MiCO/system -I./mico-os/MiCO/system/include -I./mico-os/MiCO/security -I./mico-os/MiCO/RTOS/mocOS/.. -I./mico-os/board/MK3031/. -I./mico-os/include -I./TC1 -I.
MiCO_SDK_DEFINES             		+=            -DMW310 -DCONFIG_VARIANT_MW310 -D__FPU_PRESENT -DMOC=1 -DTLS_SSL_mocSSL=1 -DmocSSL_VERSION=\"v1.0.0\" -DNETWORK_mocIP=1 -DmocIP_VERSION=\"v1.0.0\" -DRTOS_mocOS=1 -DmocOS_VERSION=\"v1.0.0\" -DCRLF_STDIO_REPLACEMENT
COMPONENTS                		:= App_TC1 Board_MK3031 mocOS mocIP mocSSL MiCO Lib_SNTP Lib_mqtt_client_c Lib_Url Lib_http_server_Framework Lib_MiCOKit_EXT_MK3031 MiCO_mocOS_Interface MiCO_mocIP_Interface Lib_MiCO_Kernel Lib_MiCO_System Lib_MiCO_Security Lib_Utilities MW3xx Lib_Base64 Lib_VGM128064_MK3031 Lib_gpio_button_MK3031 Lib_dc_motor_MK3031 Lib_RGB_P9813_MK3031 Sensor_BME280_MK3031 Sensor_DHT11_MK3031 Sensor_APDS9930_MK3031 Sensor_Light_adc_MK3031 Sensor_Infrared_Reflective_MK3031 Lib_MiCO_System_QC Lib_MiCO_System_WAC aws Lib_MiCO_Security_SRP_6a Lib_MiCO_Security_Sodium Lib_JSON_C GCC Lib_MFi_Auth_MK3031
BUS                       		:= MW310
IMAGE_TYPE                		:= ram
NETWORK_FULL              		:= 
RTOS_FULL                 		:= mocOS
PLATFORM_DIRECTORY        		:= ./mico-os/board/MK3031
APP_FULL                  		:= ./TC1
NETWORK                   		:= 
RTOS                      		:= mocOS
MODULE                  			:= 3031
PLATFORM                  		:= MK3031
HOST_MCU_FAMILY                  	:= MW3xx
USB                       		:= 
APP                       		:= TC1
HOST_OPENOCD              		:= mw3xx
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
App_TC1_LOCATION         := .//TC1/
Board_MK3031_LOCATION         := ./mico-os/board/MK3031/
mocOS_LOCATION         := ./mico-os/MiCO/RTOS/mocOS/
mocIP_LOCATION         := ./mico-os/MiCO/net/mocIP/
mocSSL_LOCATION         := ./mico-os/MiCO/security/TLS/mocSSL/
MiCO_LOCATION         := ./mico-os/MiCO/
Lib_SNTP_LOCATION         := ./mico-os/libraries/protocols/SNTP/
Lib_mqtt_client_c_LOCATION         := ./mico-os/libraries/protocols/mqtt/
Lib_Url_LOCATION         := ./mico-os/libraries/utilities/url/
Lib_http_server_Framework_LOCATION         := ./mico-os/libraries/daemons/http_server/
Lib_MiCOKit_EXT_MK3031_LOCATION         := ./mico-os/libraries/drivers/MiCOKit_EXT/
MiCO_mocOS_Interface_LOCATION         := ./mico-os/MiCO/RTOS/mocOS/mico/
MiCO_mocIP_Interface_LOCATION         := ./mico-os/MiCO/net/mocIP/mico/
Lib_MiCO_Kernel_LOCATION         := ./mico-os/MiCO/core/
Lib_MiCO_System_LOCATION         := ./mico-os/MiCO/system/
Lib_MiCO_Security_LOCATION         := ./mico-os/MiCO/security/
Lib_Utilities_LOCATION         := ./mico-os/libraries/utilities/
MW3xx_LOCATION         := ./mico-os/platform/MCU/MW3xx/
Lib_Base64_LOCATION         := ./mico-os/libraries/utilities/base64/
Lib_VGM128064_MK3031_LOCATION         := ./mico-os/libraries/drivers/display/VGM128064/
Lib_gpio_button_MK3031_LOCATION         := ./mico-os/libraries/drivers/keypad/gpio_button/
Lib_dc_motor_MK3031_LOCATION         := ./mico-os/libraries/drivers/motor/dc_motor/
Lib_RGB_P9813_MK3031_LOCATION         := ./mico-os/libraries/drivers/rgb_led/P9813/
Sensor_BME280_MK3031_LOCATION         := ./mico-os/libraries/drivers/sensor/BME280/
Sensor_DHT11_MK3031_LOCATION         := ./mico-os/libraries/drivers/sensor/DHT11/
Sensor_APDS9930_MK3031_LOCATION         := ./mico-os/libraries/drivers/sensor/APDS9930/
Sensor_Light_adc_MK3031_LOCATION         := ./mico-os/libraries/drivers/sensor/light_adc/
Sensor_Infrared_Reflective_MK3031_LOCATION         := ./mico-os/libraries/drivers/sensor/infrared_adc/
Lib_MiCO_System_QC_LOCATION         := ./mico-os/MiCO/system/qc_test/
Lib_MiCO_System_WAC_LOCATION         := ./mico-os/MiCO/system/easylink/MFi_WAC/
aws_LOCATION         := ./mico-os/MiCO/system/easylink/aws/
Lib_MiCO_Security_SRP_6a_LOCATION         := ./mico-os/MiCO/security/SRP_6a/
Lib_MiCO_Security_Sodium_LOCATION         := ./mico-os/MiCO/security/Sodium/
Lib_JSON_C_LOCATION         := ./mico-os/libraries/utilities/json_c/
GCC_LOCATION         := ./mico-os/platform/GCC/
Lib_MFi_Auth_MK3031_LOCATION         := ./mico-os/libraries/drivers/MiCODriverMFiAuth/
App_TC1_SOURCES          += main.c cJSON/cJSON.c ota_server/ota_server.c user_wifi.c user_gpio.c user_sntp.c user_mqtt_client.c user_ota.c user_power.c user_function.c http_server/app_httpd.c http_server/web_data.c
Board_MK3031_SOURCES          += platform.c
mocOS_SOURCES          += 
mocIP_SOURCES          += 
mocSSL_SOURCES          += mico/mico_ssl.c
MiCO_SOURCES          += 
Lib_SNTP_SOURCES          += sntp.c
Lib_mqtt_client_c_SOURCES          += MQTTClient.c mico/MQTTMiCO.c MQTTPacket/MQTTConnectClient.c MQTTPacket/MQTTConnectServer.c MQTTPacket/MQTTDeserializePublish.c MQTTPacket/MQTTFormat.c MQTTPacket/MQTTPacket.c MQTTPacket/MQTTSerializePublish.c MQTTPacket/MQTTSubscribeClient.c MQTTPacket/MQTTSubscribeServer.c MQTTPacket/MQTTUnsubscribeClient.c MQTTPacket/MQTTUnsubscribeServer.c 
Lib_Url_SOURCES          += url.c
Lib_http_server_Framework_SOURCES          += http_parse.c httpd_handle.c httpd_ssi.c httpd_sys.c httpd_wsgi.c httpd.c http-strings.c
Lib_MiCOKit_EXT_MK3031_SOURCES          += micokit_ext_mfg.c micokit_ext.c motion_sensor.c temp_hum_sensor.c
MiCO_mocOS_Interface_SOURCES          += mico_rtos.c ../../mico_rtos_common.c
MiCO_mocIP_Interface_SOURCES          += mico_socket.c
Lib_MiCO_Kernel_SOURCES          += mico_config.c moc_main.c ../../platform/MCU/MW3xx/moc/moc_api.c 
Lib_MiCO_System_SOURCES          += mico_system_init.c mico_system_monitor.c mico_system_notification.c mico_system_para_storage.c mico_system_time.c mico_system_power_daemon.c mico_filesystem.c system_misc.c  command_console/mico_cli.c config_server/config_server_menu.c config_server/config_server.c easylink/system_easylink_delegate.c easylink/system_easylink_wac.c easylink/system_easylink.c easylink/system_easylink_usr.c easylink/system_easylink_softap.c easylink/system_easylink_monitor.c easylink/system_aws.c easylink/internal/easylink_bonjour.c mdns/mico_mdns.c mdns/system_discovery.c tftp_ota/tftp_ota.c tftp_ota/tftpc.c
Lib_MiCO_Security_SOURCES          += Curve25519/curve25519-donna.c  SHAUtils/hkdf.c SHAUtils/hmac.c SHAUtils/sha1.c SHAUtils/sha224-256.c SHAUtils/sha384-512.c SHAUtils/usha.c
Lib_Utilities_SOURCES          += AESUtils.c RingBufferUtils.c StringUtils.c LinkListUtils.c SocketUtils.c CheckSumUtils.c HTTPUtils.c TimeUtils.c TLVUtils.c URLUtils.c
MW3xx_SOURCES          += ../../Cortex-M4/crt0_GCC.c ../../Cortex-M4/platform_core.c ../platform_nsclock.c ../moc_platform_common.c
Lib_Base64_SOURCES          += base64.c
Lib_VGM128064_MK3031_SOURCES          += AsciiLib.c oled.c
Lib_gpio_button_MK3031_SOURCES          += button.c
Lib_dc_motor_MK3031_SOURCES          += dc_motor.c
Lib_RGB_P9813_MK3031_SOURCES          += hsb2rgb_led.c rgb_led.c
Sensor_BME280_MK3031_SOURCES          += bme280_user.c bme280.c
Sensor_DHT11_MK3031_SOURCES          += DHT11.c
Sensor_APDS9930_MK3031_SOURCES          += APDS9930.c
Sensor_Light_adc_MK3031_SOURCES          += light_sensor.c
Sensor_Infrared_Reflective_MK3031_SOURCES          += infrared_reflective.c
Lib_MiCO_System_QC_SOURCES          += qc_test.c internal/qc_test_tcpip.c internal/qc_test_wlan.c internal/qc_test_ble.c internal/qc_test_cli.c
Lib_MiCO_System_WAC_SOURCES          += 
aws_SOURCES          += 
Lib_MiCO_Security_SRP_6a_SOURCES          += 
Lib_MiCO_Security_Sodium_SOURCES          += 
Lib_JSON_C_SOURCES          += arraylist.c json_debug.c json_object.c json_tokener.c json_util.c linkhash.c printbuf.c
GCC_SOURCES          += mem_newlib.c math_newlib.c stdio_newlib.c time_newlib.c eabi.c
Lib_MFi_Auth_MK3031_SOURCES          += MiCODriverMFiAuth.c
App_TC1_CHECK_HEADERS    += 
Board_MK3031_CHECK_HEADERS    += 
mocOS_CHECK_HEADERS    += 
mocIP_CHECK_HEADERS    += 
mocSSL_CHECK_HEADERS    += 
MiCO_CHECK_HEADERS    += 
Lib_SNTP_CHECK_HEADERS    += 
Lib_mqtt_client_c_CHECK_HEADERS    += 
Lib_Url_CHECK_HEADERS    += 
Lib_http_server_Framework_CHECK_HEADERS    += 
Lib_MiCOKit_EXT_MK3031_CHECK_HEADERS    += 
MiCO_mocOS_Interface_CHECK_HEADERS    += 
MiCO_mocIP_Interface_CHECK_HEADERS    += 
Lib_MiCO_Kernel_CHECK_HEADERS    += 
Lib_MiCO_System_CHECK_HEADERS    += 
Lib_MiCO_Security_CHECK_HEADERS    += 
Lib_Utilities_CHECK_HEADERS    += 
MW3xx_CHECK_HEADERS    += 
Lib_Base64_CHECK_HEADERS    += 
Lib_VGM128064_MK3031_CHECK_HEADERS    += 
Lib_gpio_button_MK3031_CHECK_HEADERS    += 
Lib_dc_motor_MK3031_CHECK_HEADERS    += 
Lib_RGB_P9813_MK3031_CHECK_HEADERS    += 
Sensor_BME280_MK3031_CHECK_HEADERS    += 
Sensor_DHT11_MK3031_CHECK_HEADERS    += 
Sensor_APDS9930_MK3031_CHECK_HEADERS    += 
Sensor_Light_adc_MK3031_CHECK_HEADERS    += 
Sensor_Infrared_Reflective_MK3031_CHECK_HEADERS    += 
Lib_MiCO_System_QC_CHECK_HEADERS    += 
Lib_MiCO_System_WAC_CHECK_HEADERS    += 
aws_CHECK_HEADERS    += 
Lib_MiCO_Security_SRP_6a_CHECK_HEADERS    += 
Lib_MiCO_Security_Sodium_CHECK_HEADERS    += 
Lib_JSON_C_CHECK_HEADERS    += 
GCC_CHECK_HEADERS    += 
Lib_MFi_Auth_MK3031_CHECK_HEADERS    += 
App_TC1_INCLUDES         := 
Board_MK3031_INCLUDES         := 
mocOS_INCLUDES         := 
mocIP_INCLUDES         := 
mocSSL_INCLUDES         := 
MiCO_INCLUDES         := 
Lib_SNTP_INCLUDES         := 
Lib_mqtt_client_c_INCLUDES         := 
Lib_Url_INCLUDES         := 
Lib_http_server_Framework_INCLUDES         := 
Lib_MiCOKit_EXT_MK3031_INCLUDES         := 
MiCO_mocOS_Interface_INCLUDES         := 
MiCO_mocIP_Interface_INCLUDES         := 
Lib_MiCO_Kernel_INCLUDES         := 
Lib_MiCO_System_INCLUDES         := -I./mico-os/MiCO/system/command_console -I./mico-os/MiCO/system/easylink/internal
Lib_MiCO_Security_INCLUDES         := 
Lib_Utilities_INCLUDES         := 
MW3xx_INCLUDES         := 
Lib_Base64_INCLUDES         := 
Lib_VGM128064_MK3031_INCLUDES         := 
Lib_gpio_button_MK3031_INCLUDES         := 
Lib_dc_motor_MK3031_INCLUDES         := 
Lib_RGB_P9813_MK3031_INCLUDES         := 
Sensor_BME280_MK3031_INCLUDES         := 
Sensor_DHT11_MK3031_INCLUDES         := 
Sensor_APDS9930_MK3031_INCLUDES         := 
Sensor_Light_adc_MK3031_INCLUDES         := 
Sensor_Infrared_Reflective_MK3031_INCLUDES         := 
Lib_MiCO_System_QC_INCLUDES         := -I./mico-os/MiCO/system/qc_test/internal
Lib_MiCO_System_WAC_INCLUDES         := 
aws_INCLUDES         := 
Lib_MiCO_Security_SRP_6a_INCLUDES         := 
Lib_MiCO_Security_Sodium_INCLUDES         := 
Lib_JSON_C_INCLUDES         := 
GCC_INCLUDES         := 
Lib_MFi_Auth_MK3031_INCLUDES         := 
App_TC1_DEFINES          := 
Board_MK3031_DEFINES          := 
mocOS_DEFINES          := 
mocIP_DEFINES          := 
mocSSL_DEFINES          := 
MiCO_DEFINES          := 
Lib_SNTP_DEFINES          := 
Lib_mqtt_client_c_DEFINES          := 
Lib_Url_DEFINES          := 
Lib_http_server_Framework_DEFINES          := 
Lib_MiCOKit_EXT_MK3031_DEFINES          := 
MiCO_mocOS_Interface_DEFINES          := 
MiCO_mocIP_Interface_DEFINES          := 
Lib_MiCO_Kernel_DEFINES          := 
Lib_MiCO_System_DEFINES          := -DCONFIG_MICO_AWS
Lib_MiCO_Security_DEFINES          := 
Lib_Utilities_DEFINES          := 
MW3xx_DEFINES          := 
Lib_Base64_DEFINES          := 
Lib_VGM128064_MK3031_DEFINES          := 
Lib_gpio_button_MK3031_DEFINES          := 
Lib_dc_motor_MK3031_DEFINES          := 
Lib_RGB_P9813_MK3031_DEFINES          := 
Sensor_BME280_MK3031_DEFINES          := 
Sensor_DHT11_MK3031_DEFINES          := 
Sensor_APDS9930_MK3031_DEFINES          := 
Sensor_Light_adc_MK3031_DEFINES          := 
Sensor_Infrared_Reflective_MK3031_DEFINES          := 
Lib_MiCO_System_QC_DEFINES          := 
Lib_MiCO_System_WAC_DEFINES          := 
aws_DEFINES          := 
Lib_MiCO_Security_SRP_6a_DEFINES          := 
Lib_MiCO_Security_Sodium_DEFINES          := 
Lib_JSON_C_DEFINES          := 
GCC_DEFINES          := 
Lib_MFi_Auth_MK3031_DEFINES          := 
App_TC1_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Board_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocOS_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocIP_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocSSL_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_SNTP_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_mqtt_client_c_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_Url_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_http_server_Framework_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCOKit_EXT_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_mocOS_Interface_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_mocIP_Interface_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Kernel_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_Utilities_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" -Wno-char-subscripts
MW3xx_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" -Wno-implicit-function-declaration -Wno-unused-variable -Wno-implicit-function-declaration -Wno-unused-variable
Lib_Base64_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_VGM128064_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" -Wno-missing-braces
Lib_gpio_button_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_dc_motor_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_RGB_P9813_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_BME280_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_DHT11_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_APDS9930_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_Light_adc_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_Infrared_Reflective_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_QC_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_WAC_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
aws_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_SRP_6a_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_Sodium_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_JSON_C_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" -Wno-unused-value
GCC_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MFi_Auth_MK3031_CFLAGS           :=                   -mthumb -mcpu=cortex-m4    -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
App_TC1_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Board_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocOS_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocIP_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
mocSSL_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_SNTP_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DNDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_mqtt_client_c_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_Url_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_http_server_Framework_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCOKit_EXT_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_mocOS_Interface_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MiCO_mocIP_Interface_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Kernel_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_Utilities_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
MW3xx_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_Base64_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_VGM128064_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_gpio_button_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_dc_motor_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_RGB_P9813_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_BME280_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_DHT11_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_APDS9930_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_Light_adc_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Sensor_Infrared_Reflective_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_QC_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_System_WAC_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
aws_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_SRP_6a_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MiCO_Security_Sodium_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_JSON_C_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
GCC_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
Lib_MFi_Auth_MK3031_CXXFLAGS         :=                   -mthumb -mcpu=cortex-m4  -mlittle-endian                  -DDEBUG -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DMiCO_SDK_VERSION_MAJOR=3 -DMiCO_SDK_VERSION_MINOR=6 -DMiCO_SDK_VERSION_REVISION=0 -DBUS=\"MW310\" -I./build/TC1@MK3031@moc/resources/ -DPLATFORM=\"MK3031\" 
App_TC1_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Board_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
mocOS_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
mocIP_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
mocSSL_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
MiCO_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_SNTP_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_mqtt_client_c_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_Url_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_http_server_Framework_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCOKit_EXT_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
MiCO_mocOS_Interface_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
MiCO_mocIP_Interface_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_Kernel_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_System_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_Security_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_Utilities_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
MW3xx_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_Base64_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_VGM128064_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_gpio_button_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_dc_motor_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_RGB_P9813_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Sensor_BME280_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Sensor_DHT11_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Sensor_APDS9930_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Sensor_Light_adc_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Sensor_Infrared_Reflective_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_System_QC_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_System_WAC_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
aws_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_Security_SRP_6a_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MiCO_Security_Sodium_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_JSON_C_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
GCC_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
Lib_MFi_Auth_MK3031_ASMFLAGS         :=                   -mcpu=cortex-m4 -mfpu=softvfp                    -ggdb
App_TC1_RESOURCES        := 
Board_MK3031_RESOURCES        := 
mocOS_RESOURCES        := 
mocIP_RESOURCES        := 
mocSSL_RESOURCES        := 
MiCO_RESOURCES        := 
Lib_SNTP_RESOURCES        := 
Lib_mqtt_client_c_RESOURCES        := 
Lib_Url_RESOURCES        := 
Lib_http_server_Framework_RESOURCES        := 
Lib_MiCOKit_EXT_MK3031_RESOURCES        := 
MiCO_mocOS_Interface_RESOURCES        := 
MiCO_mocIP_Interface_RESOURCES        := 
Lib_MiCO_Kernel_RESOURCES        := 
Lib_MiCO_System_RESOURCES        := 
Lib_MiCO_Security_RESOURCES        := 
Lib_Utilities_RESOURCES        := 
MW3xx_RESOURCES        := 
Lib_Base64_RESOURCES        := 
Lib_VGM128064_MK3031_RESOURCES        := 
Lib_gpio_button_MK3031_RESOURCES        := 
Lib_dc_motor_MK3031_RESOURCES        := 
Lib_RGB_P9813_MK3031_RESOURCES        := 
Sensor_BME280_MK3031_RESOURCES        := 
Sensor_DHT11_MK3031_RESOURCES        := 
Sensor_APDS9930_MK3031_RESOURCES        := 
Sensor_Light_adc_MK3031_RESOURCES        := 
Sensor_Infrared_Reflective_MK3031_RESOURCES        := 
Lib_MiCO_System_QC_RESOURCES        := 
Lib_MiCO_System_WAC_RESOURCES        := 
aws_RESOURCES        := 
Lib_MiCO_Security_SRP_6a_RESOURCES        := 
Lib_MiCO_Security_Sodium_RESOURCES        := 
Lib_JSON_C_RESOURCES        := 
GCC_RESOURCES        := 
Lib_MFi_Auth_MK3031_RESOURCES        := 
App_TC1_MAKEFILE         := .//TC1/TC1.mk
Board_MK3031_MAKEFILE         := ./mico-os/board/MK3031/MK3031.mk
mocOS_MAKEFILE         := ./mico-os/MiCO/RTOS/mocOS/mocOS.mk
mocIP_MAKEFILE         := ./mico-os/MiCO/net/mocIP/mocIP.mk
mocSSL_MAKEFILE         := ./mico-os/MiCO/security/TLS/mocSSL/mocSSL.mk
MiCO_MAKEFILE         := ./mico-os/MiCO/MiCO.mk
Lib_SNTP_MAKEFILE         := ./mico-os/libraries/protocols/SNTP/SNTP.mk
Lib_mqtt_client_c_MAKEFILE         := ./mico-os/libraries/protocols/mqtt/mqtt.mk
Lib_Url_MAKEFILE         := ./mico-os/libraries/utilities/url/url.mk
Lib_http_server_Framework_MAKEFILE         := ./mico-os/libraries/daemons/http_server/http_server.mk
Lib_MiCOKit_EXT_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/MiCOKit_EXT/MiCOKit_EXT.mk
MiCO_mocOS_Interface_MAKEFILE         := ./mico-os/MiCO/RTOS/mocOS/mico/mico.mk
MiCO_mocIP_Interface_MAKEFILE         := ./mico-os/MiCO/net/mocIP/mico/mico.mk
Lib_MiCO_Kernel_MAKEFILE         := ./mico-os/MiCO/core/core.mk
Lib_MiCO_System_MAKEFILE         := ./mico-os/MiCO/system/system.mk
Lib_MiCO_Security_MAKEFILE         := ./mico-os/MiCO/security/security.mk
Lib_Utilities_MAKEFILE         := ./mico-os/libraries/utilities/utilities.mk
MW3xx_MAKEFILE         := ./mico-os/platform/MCU/MW3xx/MW3xx.mk
Lib_Base64_MAKEFILE         := ./mico-os/libraries/utilities/base64/base64.mk
Lib_VGM128064_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/display/VGM128064/VGM128064.mk
Lib_gpio_button_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/keypad/gpio_button/gpio_button.mk
Lib_dc_motor_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/motor/dc_motor/dc_motor.mk
Lib_RGB_P9813_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/rgb_led/P9813/P9813.mk
Sensor_BME280_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/sensor/BME280/BME280.mk
Sensor_DHT11_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/sensor/DHT11/DHT11.mk
Sensor_APDS9930_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/sensor/APDS9930/APDS9930.mk
Sensor_Light_adc_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/sensor/light_adc/light_adc.mk
Sensor_Infrared_Reflective_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/sensor/infrared_adc/infrared_adc.mk
Lib_MiCO_System_QC_MAKEFILE         := ./mico-os/MiCO/system/qc_test/qc_test.mk
Lib_MiCO_System_WAC_MAKEFILE         := ./mico-os/MiCO/system/easylink/MFi_WAC/MFi_WAC.mk
aws_MAKEFILE         := ./mico-os/MiCO/system/easylink/aws/aws.mk
Lib_MiCO_Security_SRP_6a_MAKEFILE         := ./mico-os/MiCO/security/SRP_6a/SRP_6a.mk
Lib_MiCO_Security_Sodium_MAKEFILE         := ./mico-os/MiCO/security/Sodium/Sodium.mk
Lib_JSON_C_MAKEFILE         := ./mico-os/libraries/utilities/json_c/json_c.mk
GCC_MAKEFILE         := ./mico-os/platform/GCC/GCC.mk
Lib_MFi_Auth_MK3031_MAKEFILE         := ./mico-os/libraries/drivers/MiCODriverMFiAuth/MiCODriverMFiAuth.mk
App_TC1_PRE_BUILD_TARGETS:= 
Board_MK3031_PRE_BUILD_TARGETS:= 
mocOS_PRE_BUILD_TARGETS:= 
mocIP_PRE_BUILD_TARGETS:= 
mocSSL_PRE_BUILD_TARGETS:= 
MiCO_PRE_BUILD_TARGETS:= 
Lib_SNTP_PRE_BUILD_TARGETS:= 
Lib_mqtt_client_c_PRE_BUILD_TARGETS:= 
Lib_Url_PRE_BUILD_TARGETS:= 
Lib_http_server_Framework_PRE_BUILD_TARGETS:= 
Lib_MiCOKit_EXT_MK3031_PRE_BUILD_TARGETS:= 
MiCO_mocOS_Interface_PRE_BUILD_TARGETS:= 
MiCO_mocIP_Interface_PRE_BUILD_TARGETS:= 
Lib_MiCO_Kernel_PRE_BUILD_TARGETS:= 
Lib_MiCO_System_PRE_BUILD_TARGETS:= 
Lib_MiCO_Security_PRE_BUILD_TARGETS:= 
Lib_Utilities_PRE_BUILD_TARGETS:= 
MW3xx_PRE_BUILD_TARGETS:= 
Lib_Base64_PRE_BUILD_TARGETS:= 
Lib_VGM128064_MK3031_PRE_BUILD_TARGETS:= 
Lib_gpio_button_MK3031_PRE_BUILD_TARGETS:= 
Lib_dc_motor_MK3031_PRE_BUILD_TARGETS:= 
Lib_RGB_P9813_MK3031_PRE_BUILD_TARGETS:= 
Sensor_BME280_MK3031_PRE_BUILD_TARGETS:= 
Sensor_DHT11_MK3031_PRE_BUILD_TARGETS:= 
Sensor_APDS9930_MK3031_PRE_BUILD_TARGETS:= 
Sensor_Light_adc_MK3031_PRE_BUILD_TARGETS:= 
Sensor_Infrared_Reflective_MK3031_PRE_BUILD_TARGETS:= 
Lib_MiCO_System_QC_PRE_BUILD_TARGETS:= 
Lib_MiCO_System_WAC_PRE_BUILD_TARGETS:= 
aws_PRE_BUILD_TARGETS:= 
Lib_MiCO_Security_SRP_6a_PRE_BUILD_TARGETS:= 
Lib_MiCO_Security_Sodium_PRE_BUILD_TARGETS:= 
Lib_JSON_C_PRE_BUILD_TARGETS:= 
GCC_PRE_BUILD_TARGETS:= 
Lib_MFi_Auth_MK3031_PRE_BUILD_TARGETS:= 
App_TC1_PREBUILT_LIBRARY := 
Board_MK3031_PREBUILT_LIBRARY := 
mocOS_PREBUILT_LIBRARY := 
mocIP_PREBUILT_LIBRARY := 
mocSSL_PREBUILT_LIBRARY := 
MiCO_PREBUILT_LIBRARY := 
Lib_SNTP_PREBUILT_LIBRARY := 
Lib_mqtt_client_c_PREBUILT_LIBRARY := 
Lib_Url_PREBUILT_LIBRARY := 
Lib_http_server_Framework_PREBUILT_LIBRARY := 
Lib_MiCOKit_EXT_MK3031_PREBUILT_LIBRARY := 
MiCO_mocOS_Interface_PREBUILT_LIBRARY := 
MiCO_mocIP_Interface_PREBUILT_LIBRARY := 
Lib_MiCO_Kernel_PREBUILT_LIBRARY := 
Lib_MiCO_System_PREBUILT_LIBRARY := 
Lib_MiCO_Security_PREBUILT_LIBRARY := 
Lib_Utilities_PREBUILT_LIBRARY := 
MW3xx_PREBUILT_LIBRARY := 
Lib_Base64_PREBUILT_LIBRARY := 
Lib_VGM128064_MK3031_PREBUILT_LIBRARY := 
Lib_gpio_button_MK3031_PREBUILT_LIBRARY := 
Lib_dc_motor_MK3031_PREBUILT_LIBRARY := 
Lib_RGB_P9813_MK3031_PREBUILT_LIBRARY := 
Sensor_BME280_MK3031_PREBUILT_LIBRARY := 
Sensor_DHT11_MK3031_PREBUILT_LIBRARY := 
Sensor_APDS9930_MK3031_PREBUILT_LIBRARY := 
Sensor_Light_adc_MK3031_PREBUILT_LIBRARY := 
Sensor_Infrared_Reflective_MK3031_PREBUILT_LIBRARY := 
Lib_MiCO_System_QC_PREBUILT_LIBRARY := 
Lib_MiCO_System_WAC_PREBUILT_LIBRARY := ./mico-os/MiCO/system/easylink/MFi_WAC/Lib_MFi_WAC.Cortex-M4.GCC.release.a
aws_PREBUILT_LIBRARY := ./mico-os/MiCO/system/easylink/aws/aws.Cortex-M4.GCC.release.a
Lib_MiCO_Security_SRP_6a_PREBUILT_LIBRARY := ./mico-os/MiCO/security/SRP_6a/Lib_SRP6a.Cortex-M4.GCC.release.a
Lib_MiCO_Security_Sodium_PREBUILT_LIBRARY := ./mico-os/MiCO/security/Sodium/Lib_Sodium.Cortex-M4.GCC.release.a
Lib_JSON_C_PREBUILT_LIBRARY := 
GCC_PREBUILT_LIBRARY := 
Lib_MFi_Auth_MK3031_PREBUILT_LIBRARY := 
MiCO_SDK_UNIT_TEST_SOURCES   		:=                                                                        
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:=   ./mico-os/makefiles/mico_moc_targets.mk
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:= build/./TC1@MK3031/resources/filesystem.bin 
WIFI_FIRMWARE						:= ./mico-os/resources/wifi_firmware/mw30x/mw30x_uapsta-14.76.36.p103.bin 
BT_PATCH_FIRMWARE					:=  
MiCO_ROM_SYMBOL_LIST_FILE 		:= 
MiCO_SDK_CHIP_SPECIFIC_SCRIPT		:=                                    
MiCO_SDK_CONVERTER_OUTPUT_FILE	:=                                    
MiCO_SDK_FINAL_OUTPUT_FILE 		:=                                    
MiCO_RAM_STUB_LIST_FILE 			:= 
MOC_KERNEL_BIN_FILE 				:= ./mico-os/resources/moc_kernel/3031/kernel.bin
MOC_APP_OFFSET 				:= 0x64000
