#!/bin/sh

if [ -z ${GOTTY_CREDENTIALS} ]; then
    /usr/local/bin/gotty --reconnect --ws-origin '.*' uname
else
    /usr/local/bin/gotty -w --reconnect -c "${GOTTY_CREDENTIALS}" --ws-origin '.*' /bin/bash
fi
