#!/bin/bash

## Make dir for our stuff
mkdir haveno-project
cd haveno-project

## < PREPARE LOCAL MONERO STAGENET >
## get Monero Project source
sudo apt update && sudo apt install build-essential cmake pkg-config libssl-dev libzmq3-dev libunbound-dev libsodium-dev libunwind8-dev liblzma-dev libreadline6-dev libldns-dev libexpat1-dev libpgm-dev qttools5-dev-tools libhidapi-dev libusb-1.0-0-dev libprotobuf-dev protobuf-compiler libudev-dev libboost-chrono-dev libboost-date-time-dev libboost-filesystem-dev libboost-locale-dev libboost-program-options-dev libboost-regex-dev libboost-serialization-dev libboost-system-dev libboost-thread-dev ccache doxygen graphviz -y
git clone --recursive https://github.com/monero-project/monero
cd monero
rm -rf miniupnp
git clone https://github.com/miniupnp/miniupnp

## Edit custom hardfork.cpp
## NOT AUTOMATED YET

## Now make monero
make
cmake -DMANUAL_SUBMODULE=1
make
cd ..

## Get Bitcoin
## TODO: build bitcoin from core
wget https://bitcoin.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-x86_64-linux-gnu.tar.gz
tar xzvf bitcoin*
rm  bitcoin*tar.gz
mv  bitcoin* bitcoin

## Get Haveno
sudo apt install git-lfs default-jdk -y
git clone https://github.com/Haveno-Dex/haveno
cp monero/bin/monero-wallet-rpc haveno/
chmod 777 haveno/monero-wallet-rpc
cd haveno/
./gradlew build
cd ..

## make folders for alice, bob, arbitrator and seed node
mkdir -p alice/share/Haveno
mkdir -p bob/share/Haveno
mkdir -p arbitrator/share/Haveno
mkdir -p seed/share/Haveno

## make folders for btc regnet and xmr node1 and node2 stagenets
mkdir btc_regchain
mkdir node1
mkdir node2

## tmux
sudo apt install tmux -y

