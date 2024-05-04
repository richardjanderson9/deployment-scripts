#!/bin/bash

## Check if script is run as root!
if [ "$EUID" -eq 0 ]; then
    echo "Warning: This script should not be run as root. Please run it as a regular user."
    exit 1
fi

## Set Variables!
github_profile="https://github.com/richardjanderson9/" ## Github Profile Link!
github_repository="deployment-scripts" ## Github Repository Name!

## Construct Github Repository Link!
github_link="${github_profile}${github_repository}.git"

## Clone the repository!
echo "Cloning repository..."
git clone "$github_link"
clone_status=$?
if [ $clone_status -ne 0 ]; then
    echo "Failed to clone the repository. Exiting..."
    exit $clone_status
fi

## Change directory!
echo "Changing directory to $github_repository..."
cd "$github_repository" && {
    echo "Successfully changed directory."
    ## Execute get-started.sh if it exists!
    get_started_script="./get-started.sh"
    if [ -f "$get_started_script" ]; then
        echo "Executing get-started.sh script..."
        bash "$get_started_script"
    else
        echo "get-started.sh script not found in the current directory. Make sure it exists and try again."
    fi
} || echo "Failed to change directory. Please make sure the directory exists."
