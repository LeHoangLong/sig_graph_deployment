#!/bin/sh
peer channel fetch oldest /etc/hyperledger/fabric/channels/genesis.pb\
    -c sig-graph\
    --cafile /etc/hyperledger/fabric/tls/ca.crt\
    --certfile /etc/hyperledger/fabric/tls/server.crt\
    --clientauth\
    --keyfile /etc/hyperledger/fabric/tls/server.key\
    --orderer ${ORDERER_END_POINTS}\
    --tls