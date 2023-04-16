#!/bin/sh
rm /root/msp/keystore/*
rm /root/msp/cacerts/*

fabric-ca-client enroll -u https://$USERNAME:$PASSWORD@$CA_HOST:$CA_PORT\
 --mspdir /root/msp\
 --csr.hosts $CA_HOST\
 --tls.certfiles /root/tls/tls-cert.pem

source /root/scripts/rename-msp-key-file.sh