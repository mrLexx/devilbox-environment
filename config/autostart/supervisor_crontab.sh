#!/usr/bin/env bash

SUPERVISOR_CONF="/etc/supervisor/conf.d/crontab.conf"

{
	echo "[program:cron]";
	echo "command=cron -f -L 15";
	echo "autostart=true";
	echo "autorestart=true";

} > "${SUPERVISOR_CONF}"