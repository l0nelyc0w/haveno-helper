#!/bin/bash

tmux new-session "./xmr1.sh" \; splitw -h -t 0 -p 80 "./btc.sh" \; splitw -h -t 1 -p 50 "./alice.sh" \; splitw -v -t 0 "./xmr2.sh" \;  splitw -v -t 2 -p 50 "./seed.sh" \; splitw -v -t 4 "./bob.sh" \; split-window -v -t 5 "./arbitrator.sh" \;


