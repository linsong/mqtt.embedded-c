cp ../../src/MQTTClient.c .
sed -e 's/""/"MQTTLinux.h"/g' ../../src/MQTTClient.h > MQTTClient.h

arm-linux-gnueabi-gcc -I ../../src -I ../../src/linux -I ../../../MQTTPacket/src \
-o stdoutsub stdoutsub.c MQTTClient.c \
../../src/linux/MQTTLinux.c \
../../../MQTTPacket/src/MQTTConnectClient.c \
../../../MQTTPacket/src/MQTTConnectServer.c \
../../../MQTTPacket/src/MQTTDeserializePublish.c \
../../../MQTTPacket/src/MQTTFormat.c  \
../../../MQTTPacket/src/MQTTPacket.c \
../../../MQTTPacket/src/MQTTSerializePublish.c \
../../../MQTTPacket/src/MQTTSubscribeClient.c \
../../../MQTTPacket/src/MQTTSubscribeServer.c \
../../../MQTTPacket/src/MQTTUnsubscribeClient.c \
../../../MQTTPacket/src/MQTTUnsubscribeServer.c

arm-linux-gnueabi-gcc -I ../../src -I ../../src/linux -I ../../../MQTTPacket/src \
-o pub pub.c MQTTClient.c \
../../src/linux/MQTTLinux.c \
../../../MQTTPacket/src/MQTTConnectClient.c \
../../../MQTTPacket/src/MQTTConnectServer.c \
../../../MQTTPacket/src/MQTTDeserializePublish.c \
../../../MQTTPacket/src/MQTTFormat.c  \
../../../MQTTPacket/src/MQTTPacket.c  \
../../../MQTTPacket/src/MQTTSerializePublish.c \
../../../MQTTPacket/src/MQTTSubscribeClient.c \
../../../MQTTPacket/src/MQTTSubscribeServer.c \
../../../MQTTPacket/src/MQTTUnsubscribeClient.c \
../../../MQTTPacket/src/MQTTUnsubscribeServer.c
