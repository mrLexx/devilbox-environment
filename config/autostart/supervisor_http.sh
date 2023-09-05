#!/usr/bin/env bash

SUPERVISOR_HTTP_CONF="/etc/supervisor/conf.d/http.conf"

{
	echo "[inet_http_server]";
	echo "port = 0.0.0.0:9001";
} > "${SUPERVISOR_HTTP_CONF}"