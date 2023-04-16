#!/bin/sh
echo $USER_AFFILIATION
fabric-ca-client register --id.name ${USERNAME}\
    --id.affiliation ${USER_AFFILIATION}\
    --id.attrs ${USER_ATTRIBUTES}\
    --id.type ${USER_TYPE}\
    --id.secret ${PASSWORD}\
    --mspdir /root/msp\
    --tls.certfiles /root/tls/root-tls-ca.pem\
    -u ${ORG_CA_URL}