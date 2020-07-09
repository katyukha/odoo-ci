#!/bin/bash
ODOO_VERSION="${1:-12.0}";
docker build --rm \
    -t katyukha/odoo-ci:$ODOO_VERSION \
    --build-arg ODOO_VERSION=$ODOO_VERSION .
