#!/bin/bash

## Set Variable(s)!
github_profile="https://github.com/richardjanderson9/" ## Github Profile Link!
github_repository="deployment-scripts" ## Github Repository Link!
## Final Link!
github_link="${github_profile}${github_repository}.git"


## Confirm current path
echo "Current path: $(pwd)"  ## Display the current working directory!
read -p "Is this the correct path to clone the repository? (y/n): " confirm_path  ## Prompt user to confirm the current path!

if [[ $confirm_path != "y" && $confirm_path != "Y" ]]; then
    echo "Please navigate to the correct path and run the script again."  ## Inform user to navigate to the correct path if confirmation is negative!
    exit 1  ## Exit with error status!
fi

## Clone the repository!
git clone "$github_link"  ## Clone the repository using the generated GitHub link!
