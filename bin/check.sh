#!/bin/bash

SCRIPT=$(readlink -f $0)
MAIN_PATH=`realpath $(dirname $SCRIPT)/..`
. $MAIN_PATH/bin/conf/common.conf

CHECK_DIRS=(
`realpath $(dirname $SCRIPT)/../../data/www`
`realpath $(dirname $SCRIPT)/../../backups`
)

grecho ""
grecho " [YOUR DEV PLACE]/─┐"
grecho "                   ├─ ./data/www - \`dir for web project\`"
grecho "                   ├─ ./backups  - \`dir for backups\`"
grecho "                   └─ ./devilbox-environment  - \`[devilbox-environment] dir\`"
grecho ""
becho "Checking..."
for CHECK_DIR in ${CHECK_DIRS[*]}
	do
		if [ -d "$CHECK_DIR" ]; then
      grecho "...Ok"
    else
      ###  Control will jump here if $DATA_WWW_PATH does NOT exists ###
      becho "Error: ${CHECK_DIR} not found."
    fi
	done