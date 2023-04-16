#!/bin/sh
fabric-ca-server start -b $ADMIN_USERNAME:$ADMIN_PASSWORD \
    -p $CA_PORT \
    -H /root/tls \
    --tls.enabled \
    --csr.hosts $CSR_HOSTS \
    --ca.name $CA_NAME
