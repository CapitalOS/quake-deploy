#!/usr/bin/env bash

set -e

# Needed until https://github.com/appsmithorg/appsmith/pull/27461 is released
sed -i 's/localhost\//localhost:8091\//' /opt/appsmith/run-java.sh

# Needed to support render internal healthcheck, since render will try to access the app on port 80 to check for healthcheck
sed -i '/listen.*default_server;/a listen 80 default_server;' /opt/appsmith/templates/nginx-app.conf.sh

/opt/appsmith/entrypoint.sh /usr/bin/supervisord -n
