#!/bin/bash

pkill java
pkill monero*
pkill bitcoin-qt
tmux kill-session -t 0
tmux kill-session -t 1

