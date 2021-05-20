<pre>
A set of script to help bootstrap a development enviroment on local testnet.

Folder structure

haveno-helper/
|
|  # Scripts to start local Haveno roles
|
|--seed.sh
|--alice.sh
|--bob.sh
|--arbitrator.sh
|  
|  # Script for Bitcoin regtest
|
|--btc.sh
|
|  # Scripts for Monero Nodes
|
|--xmr1.sh
|--xmr2.sh
|
|  # Scripts to start/kill all of above 
|
|--start-all.sh
|--kill-all.sh
|
|  # Script to bootstrap everything (NOT READY FOR USE)
|
|--bootstrap-env.sh
|  
|  # Following folder structure is expected for the scripts to work
|
|--seed/share/Haveno/
|--alice/share/Haveno/
|--bob/share/Haveno/
|--arbitrator/share/Haveno/
|--node2/
|--node1/
|--btc_regtest/
|
|  # Following folder structure will be created in addition to the above
|
|--monero/
|--haveno/
'--bitcoin/
</pre>
