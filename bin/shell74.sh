#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

cd $MAIN_PATH/devilbox

docker compose --env-file .env --env-file secrets.env exec --user devilbox php74 bash -l
