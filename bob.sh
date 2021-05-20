#!/bin/bash

cd haveno
./haveno-desktop --baseCurrencyNetwork=XMR_STAGENET --useLocalhostForP2P=true --useDevPrivilegeKeys=true --nodePort=6666 --appName=haveno-XMR_STAGENET_Bob --daoActivated=false --apiPassword=apitest --apiPort=1000  --userDataDir=../bob/share --appDataDir=../bob/share/Haveno
