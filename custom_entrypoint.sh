#!/usr/bin/env bash

set -e

# Needed until https://github.com/appsmithorg/appsmith/pull/27461 is released
sed -i 's/localhost\//localhost:8091\//' /opt/appsmith/run-java.sh

/opt/appsmith/entrypoint.sh /usr/bin/supervisord -n
