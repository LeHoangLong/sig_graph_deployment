#!/bin/sh
fabric-ca-client identity modify ${USERNAME}\
    --affiliation ${USER_AFFILIATION}\
    --attrs ${USER_ATTRIBUTES}\
    --type ${USER_TYPE}\
    --secret ${PASSWORD}\
    --mspdir /root/msp\
    --tls.certfiles /root/tls/root-tls-ca.pem\
    -u ${ORG_CA_URL}