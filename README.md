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

## Utility Shell Scripts
Download the shell scripts below to start/check/stop all required ProcessMaker services in single commands.  

Link to start sh

link to status

link to stop

**Note** for Mac users: https://www.addictivetips.com/mac-os/run-shell-sh-script-on-macos/

Remember you created these in your Linux box. Clone this repo in there, and commit those here after testing them. Then link them here.

## Installation Steps
Click on your operating system below to reveal the installation steps to follow. 
<details><summary>Windows (WSL2)</summary>
<p>

1. Follow [this](https://learn.microsoft.com/en-us/windows/wsl/install) guide for installing a Linux distribution on your Windows machine. This will allow you to operate Windows and Linux at the same time. Given its system requirements, **installation of ProcessMaker 4 will be done in the Linux subsystem**. 
1. The Ubuntu Linux distribution will be installed by default. [Other](https://learn.microsoft.com/en-us/windows/wsl/basic-commands#install-a-specific-linux-distribution) Linux distributions can also be installed. 
1. Restart your machine after WSL installation process is completed. 
1. Open the [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/) in your machine and open a window for the Linux distribution installed previously. 
    - Note that you can also run a Linux distribution from PowerShell or CMD with the `wsl` command. Just make sure you are performing the installation steps on `/mnt/c/Users/<your-username>` (Linux) and **NOT** on `C:\Users\<your-username>` (Windows). 
1. Follow the steps for your specific Linux distribution in one of the sections below. 

    
<details><summary>Ubuntu</summary>
<p>
1.  

**REMEMBER to note that scripts (including services ones) should be run in sudo.**
    
**ALSO point out for WSL2 how to reset the data in the Linux subsystem if something goes wrong/want to start fresh**

Add a troubleshooting section after the installation scripts saying to access the script source code for all of the required commands/installations and try them independently if preferred or easier to troubleshoot. 
    
</p>
</details>
    
</p>
</details>

<details><summary>macOS</summary>
<p>

#### We can hide anything, even code!

```ruby
   puts "Hello World"
```

</p>
</details>
