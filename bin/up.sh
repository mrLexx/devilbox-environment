#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

cd $MAIN_PATH/

## OUTPUT=$(docker volume ls | grep devilbox_devilbox-rabbit)
## echo "${OUTPUT}"

becho "Up docker"
$MAIN_PATH/bin/config_remove_custom.sh
$MAIN_PATH/bin/config_copy.sh
cd $MAIN_PATH/devilbox
docker compose --env-file .env --env-file secrets.env up -d
