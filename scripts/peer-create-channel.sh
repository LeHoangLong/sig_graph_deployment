#!/bin/sh
ls /etc/hyperledger/fabric/channels
peer channel create -c sig-graph -f /etc/hyperledger/fabric/channels/genesis.pb\
    --cafile /etc/hyperledger/fabric/tls/ca.crt\
    --certfile /etc/hyperledger/fabric/tls/server.crt\
    --clientauth\
    --keyfile /etc/hyperledger/fabric/tls/server.key\
    --orderer ${ORDERER_END_POINTS}\
    --tls