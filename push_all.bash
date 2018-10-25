#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0));

# Build images
$SCRIPT_DIR/push.bash 7.0
$SCRIPT_DIR/push.bash 8.0
$SCRIPT_DIR/push.bash 9.0
$SCRIPT_DIR/push.bash 10.0
$SCRIPT_DIR/push.bash 11.0
$SCRIPT_DIR/push.bash 12.0


