#!/bin/bash
SCRIPT_DIR=$(dirname $(readlink -f $0));
ODOO_VERSION="11.0";
case $1 in
    7.0|8.0|9.0|10.0|11.0)
        ODOO_VERSION="$1";
        shift;
    ;;
esac
$SCRIPT_DIR/build.bash $ODOO_VERSION && $SCRIPT_DIR/run.bash $ODOO_VERSION $@;
