#!/bin/bash
ODOO_VERSION="12.0";
case $1 in
    latest|7.0|8.0|9.0|10.0|11.0|12.0|13.0|14.0|15.0)
        ODOO_VERSION="$1";
        shift;
    ;;
esac

docker run -ti --rm -p 8069:8069 katyukha/odoo-ci:$ODOO_VERSION $@; 
