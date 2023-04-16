#!/bin/sh
for file in /root/msp/keystore/*; do
  KEY_FILE=$file
done
cp $KEY_FILE /root/msp/keystore/key.pem


for file in /root/msp/cacerts/*; do
  KEY_FILE=$file
done
cp $KEY_FILE /root/msp/cacerts/cert.pem