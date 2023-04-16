#!/bin/sh
rm /root/msp/keystore/*
rm /root/msp/cacerts/*
fabric-ca-client enroll -u https://$NODE_NAME:$NODE_PASSWORD@$TLS_CA_HOST:$TLS_CA_PORT\
 --mspdir /root/msp\
 --csr.hosts $NODE_HOST\
 --tls.certfiles /root/tls-org/ca-cert.pem
source /root/scripts/rename-msp-key-file.sh