#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

cd $MAIN_PATH/devilbox/

# becho "rm old CONFIGS..."
git check-ignore $(find . -type f -print) | grep "./cfg/\|./autostart/\|./bash/\|./log/\|./error/\|./access/" | xargs rm
rm -rf ./cfg_custom
rm -rf ./.env
rm -rf ./docker-compose.override.yml