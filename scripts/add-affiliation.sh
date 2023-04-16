#!/bin/sh
echo ${AFFILIATION}
echo ${ORG_CA_URL}
fabric-ca-client affiliation -d\
    add ${AFFILIATION}\
    --mspdir /root/msp\
    --tls.certfiles /root/tls/root-tls-ca.pem\
    --force\
    -u ${ORG_CA_URL}