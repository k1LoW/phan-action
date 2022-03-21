#!/bin/sh -l

set -e

if [ "$PHAN_ALLOW_FAILURE" = "0" ] || [ "$PHAN_ALLOW_FAILURE" = "false" ]; then
    phan
else
    phan || true
fi

