#!/bin/bash

## Commands for installing general tools!
general_tools_cmd="sudo apt-get install -y tree nmap net-tools speedtest-cli python3.12 curl htop"

## Execute general tools installation command!
echo "Installing General Tools..."
eval "$general_tools_cmd"
