#!/usr/bin/env bash

set -e

sed -i 's/localhost\//localhost:8091\//' /opt/appsmith/run-java.sh

/opt/appsmith/entrypoint.sh /usr/bin/supervisord -n
