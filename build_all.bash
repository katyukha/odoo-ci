#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0));

# Build images
$SCRIPT_DIR/build.bash 7.0
$SCRIPT_DIR/build.bash 8.0
$SCRIPT_DIR/build.bash 9.0
$SCRIPT_DIR/build.bash 10.0
$SCRIPT_DIR/build.bash 11.0
$SCRIPT_DIR/build.bash 12.0
$SCRIPT_DIR/build.bash 13.0
$SCRIPT_DIR/build.bash 14.0
$SCRIPT_DIR/build.bash 15.0
