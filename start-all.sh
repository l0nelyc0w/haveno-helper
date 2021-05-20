#!/bin/bash

## regtest1   -- 0
## btc-reg    -- 1
## alice      -- 2
## regtest2   -- 3
## seed       -- 4
## bob        -- 5
## arbitrator -- 6

tmux new-session "./xmr1.sh" \; splitw -h -t 0 -p 80 "./btc.sh" \; splitw -h -t 1 -p 50 "./alice.sh" \; splitw -v -t 0 "./xmr2.sh" \;  splitw -v -t 2 -p 50 "./seed.sh" \; splitw -v -t 4 "./bob.sh" \; split-window -v -t 5 "./arbitrator.sh" \;


