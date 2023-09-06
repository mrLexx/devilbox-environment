#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

becho "Stop docker"
cd $MAIN_PATH/devilbox
docker compose stop
docker compose rm -f &> /dev/null
$MAIN_PATH/bin/config_remove_custom.sh