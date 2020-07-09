#!/bin/bash
ODOO_VERSION="${1:-12.0}";
CI_REGISTRY_IMAGE="${CI_REGISTRY_IMAGE:registry.gitlab.com/katyukha/odoo-ci}";
docker tag katyukha/odoo-ci:${ODOO_VERSION} ${CI_REGISTRY_IMAGE}:${ODOO_VERSION};
docker push $CI_REGISTRY_IMAGE:${ODOO_VERSION}
