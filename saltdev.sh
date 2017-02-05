#!/bin/bash
# ----------------------------------------------------------------------------
# wrapper script for running salt commands via a docker container
# ----------------------------------------------------------------------------
DOCKERCMD=`which docker`
$DOCKERCMD exec -it salt-master salt "$@"
