#!/bin/sh
fabric-ca-server start -d -b $ADMIN_USERNAME:$ADMIN_PASSWORD\
    --tls.enabled\
    --tls.certfile /root/tls/msp/signcerts/cert.pem\
    --tls.keyfile /root/tls/msp/keystore/key.pem\
    --port $CA_PORT\
    --ca.name $CA_NAME

