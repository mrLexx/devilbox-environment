#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`

. $MAIN_PATH/bin/conf/common.conf

cd $MAIN_PATH

./bin/stop.sh
./bin/up.sh
