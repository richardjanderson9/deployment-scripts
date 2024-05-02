# Deployment Scripts

These scripts are designed to simplify the process of setting up and managing software installations on your system.

## Description

This repository contains a set of scripts to automate the installation of system updates, general tools, and Docker on your system. Each script provides clear instructions and automates the installation process to make it quick and easy.

## Usage (Automated)

> [!WARNING]  
> This could be dangerous.

```
curl https://raw.githubusercontent.com/richardjanderson9/deployment-scripts/main/automated.sh
```

## Usage (Manual)

To use these scripts, follow these steps:

1. Clone this repository to your local machine:

    ```
    git clone https://github.com/richardjanderson9/deployment-scripts
    ```

2. Navigate to the cloned directory:

    ```
    cd deployment-scripts
    ```

3. Make the scripts executable:

    ```
    chmod +x get-started.sh
    cd scripts
    chmod +x update.sh general_tools.sh docker.sh
    ```

4. Run the `get-started.sh` script:

    ```
    cd ..
    ./get-started.sh
    ```

    Follow the prompts to select which components you want to install.

## Scripts (Main)

### automated.sh

Automates installation selection: choose system updates, general tools, or Docker. Input numbers for components, tool handles installation.

### get-started.sh

This script serves as an entry point and guides you through the process of selecting which components you want to install. It prompts you to choose from system updates, general tools, and Docker.

### project-cleanup.sh

This script removes any files included all other configured via 'get-started.sh'. (Including Docker!)

## Scripts (Components)

### update.sh

This script updates your system by running `apt-get update` and `apt-get upgrade -y` commands to ensure that your system packages are up to date.

### general_tools.sh

This script installs a set of commonly used general tools, including `tree`, `nmap`, `net-tools`, `speedtest-cli`, `python3.11`, `curl` and `htop`.

### docker.sh

This script installs Docker on your system by setting up the necessary repositories and installing Docker CE, Docker CE CLI, and containerd.io using `apt-get`.

