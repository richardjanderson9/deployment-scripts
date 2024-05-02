#!/bin/bash

## Commands for installing general tools!
general_tools_cmd="sudo apt-get install -y tree nmap net-tools speedtest-cli python3.11 curl htop > /dev/null"

## Execute general tools installation command!
echo "Installing tools..."
eval "$general_tools_cmd"
