#!/bin/sh
osnadmin channel join --channelID sig-graph\
  --config-block /etc/hyperledger/fabric/genesis.pb\
  -o ${ORDERER_ADDRESS}:7053\
  --ca-file /etc/hyperledger/fabric/tls/ca.crt\
  --client-cert /etc/hyperledger/fabric/tls/server.crt\
  --client-key /etc/hyperledger/fabric/tls/server.key
