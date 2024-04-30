#!/bin/bash

## Notification to the user!
echo "Please respond with Y (Yes) or N (No)!"

## Set central messaging!
message_install="Would you like to install"
message_confirm="(Y/N)"
message_command="sudo apt-get"

## Define a list!
RequiredData=("Update" "General Tools" "Docker")
DirLocation="scripts/"
VariableStore=("$DirLocation/update.sh" "$DirLocation/general_tools.sh" "$DirLocation/docker.sh")

## Array to store user responses!
selected_choice=()

## Array to store installed packages information!
installed_packages=()

## Loop through the list and prompt user for input, storing in lowercase!
for index in "${!RequiredData[@]}"; do
    ## Prompt the user for input and store in lowercase!
    read -rp "$message_install ${RequiredData[index]}? $message_confirm : " response
    if [[ $response =~ ^[Yy]$ ]]; then
        selected_choice+=("${VariableStore[index]}")
        installed_packages+=("${RequiredData[index]} Installed.")
    fi
done

## Execute the commands and export information about installed packages!
echo "Executing selected commands and exporting information about installed packages:"
for index in "${!selected_choice[@]}"; do
    bash "${selected_choice[index]}"
done
