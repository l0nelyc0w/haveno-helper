#!/bin/bash

cd haveno
./haveno-seednode --baseCurrencyNetwork=XMR_STAGENET --useLocalhostForP2P=true --useDevPrivilegeKeys=true --nodePort=2002 --appName=haveno-XMR_STAGENET_Seed_2002 --daoActivated=false  --userDataDir=../seed/share --appDataDir=../seed/share/Haveno
