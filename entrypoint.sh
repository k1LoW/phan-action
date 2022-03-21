#!/bin/sh -l

set -e

if [ "$PHAN_ALLOW_FAILURE" = "0" ] || [ "$PHAN_ALLOW_FAILURE" = "false" ]; then
    phan --config-file ${PHAN_CONFIG_FILE}
else
    phan --config-file ${PHAN_CONFIG_FILE} || true
fi

