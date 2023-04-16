#!/bin/sh
rm /root/msp/keystore/*
rm /root/msp/cacerts/*

fabric-ca-client enroll -d\
 -u https://$USERNAME:$PASSWORD@$ORG_CA_HOST:$ORG_CA_PORT \
 --tls.certfiles /root/tls/root-tls-ca.pem\
 --mspdir /root/msp
 
source /root/scripts/rename-msp-key-file.sh