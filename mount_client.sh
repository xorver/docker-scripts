#!/bin/bash

set -v -e

# input
if [ $1 = "2" ] ; then
	USERNAME=user1
	WORKER_DOMAIN=worker1.p2
	CLIENT_DOMAIN=client_host_2
else
        USERNAME=user1
        WORKER_DOMAIN=worker1.p1
        CLIENT_DOMAIN=client_host_1
fi

WORKER_HASH=`hashdocker ${WORKER_DOMAIN}`
WORKER_IP=`ipdocker ${WORKER_HASH}`
CLIENT_HASH=`hashdocker ${CLIENT_DOMAIN}`
TOKEN=`token`

docker exec -it ${CLIENT_HASH} \
	cp /root/bin/oneclient /home/${USERNAME}/oneclient
docker exec -it ${CLIENT_HASH} \
	chown ${USERNAME} /home/${USERNAME}/oneclient
docker exec -it -u ${USERNAME} ${CLIENT_HASH} \
        rm -rf /home/${USERNAME}/onedata
docker exec -it -u ${USERNAME} ${CLIENT_HASH} \
	mkdir /home/${USERNAME}/onedata
docker exec -it -u ${USERNAME} ${CLIENT_HASH} \
	mkdir -p /home/${USERNAME}/.local/share/oneclient/
docker exec -it -u ${USERNAME} ${CLIENT_HASH} bash -c \
	"echo ${TOKEN} > /home/${USERNAME}/.local/share/oneclient/token"
#docker exec -it -u ${USERNAME} ${CLIENT_HASH} bash -c \
#	"echo \"export HOME=/home/${USERNAME}\" >> /home/${USERNAME}/.bashrc"
#docker exec -it -u ${USERNAME} ${CLIENT_HASH} bash -c \
#	"echo \"export USER=${USERNAME}\" >> /home/${USERNAME}/.bashrc"

docker exec -it -u ${USERNAME} ${CLIENT_HASH} bash -c \
    "USER=${USERNAME} HOME=/home/${USERNAME} PROVIDER_HOSTNAME=${WORKER_IP} /home/${USERNAME}/oneclient -d --no_check_certificate --auth token /home/${USERNAME}/onedata"
docker exec -it -u ${USERNAME} ${CLIENT_HASH} bash
