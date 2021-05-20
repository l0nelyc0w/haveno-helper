#!/bin/bash

cd haveno
./haveno-desktop --baseCurrencyNetwork=XMR_STAGENET --useLocalhostForP2P=true --useDevPrivilegeKeys=true --nodePort=4444 --appName=haveno-XMR_STAGENET_arbitrator --daoActivated=false --apiPassword=apitest --apiPort=9998 --userDataDir=../arbitrator/share --appDataDir=../arbitrator/share/Haveno
