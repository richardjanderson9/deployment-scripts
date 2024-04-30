#!/bin/bash

## Commands for system update!
update_cmd="sudo apt-get update && sudo apt-get upgrade -y"

## Execute system update command!
echo "Updating system..."
eval "$update_cmd"
