#!/bin/sh -l

set -e

if [ "$PHAN_ALLOW_FAILURE" = "0" ] || [ "$PHAN_ALLOW_FAILURE" = "false" ]; then
    /opt/composer/vendor/bin/phan --config-file ${PHAN_CONFIG_FILE}
else
    /opt/composer/vendor/bin/phan --config-file ${PHAN_CONFIG_FILE} || true
fi

