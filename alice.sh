#!/bin/bash

cd haveno
./haveno-desktop --baseCurrencyNetwork=XMR_STAGENET --useLocalhostForP2P=true --useDevPrivilegeKeys=true --nodePort=5555 --appName=haveno-XMR_STAGENET_Alice --daoActivated=false --apiPassword=apitest --apiPort=9999  --userDataDir=../alice/share --appDataDir=../alice/share/Haveno
