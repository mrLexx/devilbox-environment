#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

cd $MAIN_PATH
# becho "cp new CONFIGS..."
cp -a -v ./config/autostart/. ./devilbox/autostart/ &> /dev/null
cp -a -v ./config/bash/. ./devilbox/bash/ &> /dev/null
cp -a -v ./config/cfg/. ./devilbox/cfg/ &> /dev/null
cp -a -v ./config/cfg_custom/. ./devilbox/cfg_custom/ &> /dev/null
cp -a -v ./config/.env ./devilbox/ &> /dev/null
cp -a -v ./config/docker-compose.override.yml ./devilbox/ &> /dev/null