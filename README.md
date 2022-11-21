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
    
1. Download [this](https://github.com/esarrit/pm-installation-doc/blob/main/install-requirements.sh) script. 
1. Using a File Explorer window, search for this path `\\wsl$\Ubuntu\home\<your-username>` and move the script there. Note that `<your-username>` is the username you specified during the WSL2 Linux installation and this **might** differ from your Windows User depending on your choice. If File Explorer can't find the path, search only for `\\wsl$\` and navigate manually to `home\<your-username>`.    
1. Open the [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/) in your machine and open a window for Ubuntu. 
    - Note that you can also run a Linux distribution from PowerShell or CMD with the `wsl` command. Just make sure you are performing the installation steps on `/mnt/c/Users/<your-username>` (Linux) and **NOT** on `C:\Users\<your-username>` (Windows). 
1. Confirm that the script you moved to your user home directory is there by executing the `ls` command. Then, run `sudo bash install-requirements.sh`. This will install most of the required software and services needed for ProcessMaker 4. 
1. Close the current Ubuntu terminal window and open a new one. 
1. Run the following commands to check if php, composer, and nvm were installed correctly. You should expect the php version to be 8.1.
    ```
    php version -> php --version
    composer
    composer --version
    command -v nvm 
    ```
1. Continue

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
    <details><summary>CLICK ME</summary>
<p>

#### We can hide anything, even code!

```ruby
   puts "Hello World"
```

</p>
</details>
