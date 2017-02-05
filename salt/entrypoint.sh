#!/bin/bash
# ----------------------------------------------------------------------------
# start a salt master, minion, or syndic
# ----------------------------------------------------------------------------
set -e

if [ "$1" == "master" ]; then
    /bin/salt-master --log-level=debug
elif [ "$1" == "minion" ]; then
    /bin/salt-minion --log-level=debug
elif [ "$1" == "syndic" ]; then
    /bin/salt-master -d --log-level=debug && \
    /bin/salt-syndic --log-level=debug
else
    exec "$@"
fi
