#!/bin/sh
osnadmin channel remove --channelID sig-graph\
  -o ${ORDERER_ADDRESS}:7053\
  --ca-file /etc/hyperledger/fabric/tls/ca.crt\
  --client-cert /etc/hyperledger/fabric/tls/server.crt\
  --client-key /etc/hyperledger/fabric/tls/server.key
