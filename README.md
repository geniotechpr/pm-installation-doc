# ProcessMaker 4 Installation Guide
## Overview
ProcessMaker is an open source, workflow management software suite, which includes tools to automate your workflow, design forms, create documents, assign roles and users, create routing rules, and map an individual process quickly and easily. This file describes the requirements and steps to perform a local installation on different operating systems.

## System Requirements
* [Composer 2](https://getcomposer.org/)
* [Node.js 16.18.1](https://nodejs.org/en/)
* [NPM 8.9](https://www.npmjs.com/package/npm)
* [PHP 8.1](https://php.net)
* [PHP-FPM](https://www.php.net/manual/en/install.fpm.php)
* [Nginx](https://nginx.org/)
* [MySql 5.7](https://dev.mysql.com/downloads/mysql/5.7.html)
* [Redis](https://redis.io/)
* [Docker](https://docs.docker.com/get-docker/)

## Installation Steps
Click on your operating system below to reveal the installation steps to follow. 
<details><summary>Windows (WSL2)</summary>
<p>

1. Follow [this](https://learn.microsoft.com/en-us/windows/wsl/install) guide for installing a Linux distribution on your Windows machine. This will allow you to operate Windows and Linux at the same time. Given its system requirements, **installation of ProcessMaker 4 will be done in the Linux subsystem**. 
1. The Ubuntu Linux distribution will be installed by default. [Other](https://learn.microsoft.com/en-us/windows/wsl/basic-commands#install-a-specific-linux-distribution) Linux distributions can also be installed. 
1. Restart your machine after WSL installation process is completed. 
1. Follow the steps for your specific Linux distribution in one of the sections below. 

    
<details><summary>WLS2 Ubuntu</summary>
<p>
    
#### Required Software and Services
1. Download [this](https://github.com/esarrit/pm-installation-doc/blob/main/install-requirements.sh) script. 
1. Using a File Explorer window, search for this path `\\wsl$\Ubuntu\home\<your-username>` and move the script there. Note that `<your-username>` is the username you specified during the WSL2 Linux installation and this **might** differ from your Windows User depending on your choice. If File Explorer can't find the path, search only for `\\wsl$\` and navigate manually to `home\<your-username>`.    
1. Open the [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/) in your machine and open a window for Ubuntu. 
    - Note that you can also run a Linux distribution from PowerShell or CMD with the `wsl` command. Just make sure you are performing the installation steps on `/mnt/c/Users/<your-username>` (Linux) and **NOT** on `C:\Users\<your-username>` (Windows). 
1. Confirm that the script you moved to your user home directory is there by executing the `ls` command. Then, run `sudo bash install-requirements.sh`. This will install most of the required software and services needed for ProcessMaker 4. 
1. Close the current Ubuntu terminal window and open a new one. 
1. Run the following commands to check if php, composer, and nvm were installed correctly. You should expect the php version to be 8.1.
    ```
    php --version
    composer
    composer --version
    command -v nvm 
    ```
1. Run `nvm install 16.18.1` to install the expected node version and `npm install -g npm@8.9.0` to install the expected npm version. 

#### MySQL
1. Run the set of commands below to uninstall MySQL and MySQL server on WSL2 Ubuntu
    ```
    sudo apt purge mysql-server
    sudo apt purge mysql
    sudo apt purge mysql-client
    sudo apt purge mysql-common mysql-server-core-*
    sudo apt purge mysql-client-core-*
    ```
1. Confirm there is no MySQL by executing `which mysql` and `mysql --version`. 
1. Install wget by running `sudo apt install wget -y` and then execute the commands below
1. Run `wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb` and `sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb`. Choose Ubuntu Bionic and click OK, select MySQL 5.7 server and click OK.
1. Run `sudo apt-get update`. 
    - If you encounter an error similar to "signatures couldn't be verified because the public key is not available: NO_PUBKEY 467B942D3A79BD29", execute the following commands:
    ```
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
    sudo apt update
    sudo apt-cache policy mysql-server
    sudo apt install -f mysql-community-client=5.7*
    sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
    ```
1. Run `sudo service mysql start` and sudo `mysql_secure_installation`. Press the Y key to start the installation and set the root password when prompted.
1. Check the MySQL version using `mysql --version`. It should be version 5.7.
1. Login to MySQL running `mysql -u root -p` and entering the root password previously set. 
1. Create the ProcessMaker database with the `create database processmaker;` command. Then, confirm the database is available running `show databases;`. You should see processmaker in the list of databases. Use `exit;` command to terminate MySQL. 
    
#### Docker
1. Download and install [Docker Desktop for Windows](https://docs.docker.com/desktop/install/windows-install/). 
1. Open the Docker Desktop application and go to Settings > Resources > WSL INTEGRATION. 
1. Turn on Ubuntu. Click on Apply & Restart. 
1. Reopen the Docker Desktop app, navigate to WSL INTEGRATION, and ensure your screen looks like the image below.
    
    ![Screenshot (17)](https://user-images.githubusercontent.com/47648788/203155035-9e5fcc4d-62c5-4c59-9985-eb51f65acdd6.png)
1. Restart your computer. 
    
#### Install ProcessMaker
1. Open a Ubuntu terminal window.
1. In the home directory, clone the repository by running `git clone https://github.com/ProcessMaker/processmaker.git ~/src/processmaker`. 
1. Download the [start-services](https://github.com/esarrit/pm-installation-doc/blob/main/start-services.sh),[status-services](https://github.com/esarrit/pm-installation-doc/blob/main/status-services.sh), and [stop-services](https://github.com/esarrit/pm-installation-doc/blob/main/status-services.sh) scripts. Move them to `\\wsl$\Ubuntu\home\<your-username>` like you did at the beginning of this guide with the installation script. 
1. Start the services by running `sudo bash start-services.sh`. Check the status of the services by running `sudo bash status-services.sh`. In case you would like to stop services at any point to restart them or shut down, run `sudo bash stop-services.sh`. 
1. Once services are running... (install processmaker). 
    
#### Configurations
1. NGINX, PHP, WINDOWS. See Google doc steps/notes for more on these. 
   
    
**REMEMBER to note that scripts (including services ones) should be run in sudo.**
    
**ALSO point out for WSL2 how to reset the data in the Linux subsystem if something goes wrong/want to start fresh**

Add a troubleshooting section after the installation scripts saying to access the script source code for all of the required commands/installations and try them independently if preferred or easier to troubleshoot. 
    
</p>
</details>
    
</p>
</details>

<details><summary>macOS</summary>
<p>

**Note** for Mac users: https://www.addictivetips.com/mac-os/run-shell-sh-script-on-macos/

</p>
</details>

