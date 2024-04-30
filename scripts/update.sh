#!/bin/bash

## Commands for system update!
update_cmd="sudo apt-get update > /dev/null && sudo apt-get upgrade -y > /dev/null"

## Execute system update command!
echo "Installing updates..."
eval "$update_cmd"
