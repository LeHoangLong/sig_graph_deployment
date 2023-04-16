#!/bin/sh

fabric-ca-client register -d --id.name ${NODE_NAME} \
 --id.secret ${NODE_PASSWORD} \
 -u https://${TLS_CA_HOST}:${TLS_CA_PORT} \
 --mspdir /root/tls-org/users/${TLS_ADMIN_USERNAME}/msp/ \
 --tls.certfiles /root/tls-org/ca-cert.pem
  

