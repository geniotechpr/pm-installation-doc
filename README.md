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
<details><summary>Windows (WSL2)</summary>
<p>

1. Follow [this](https://learn.microsoft.com/en-us/windows/wsl/install) guide for installing a Linux distribution on your Windows machine. This will allow you to operate Windows and Linux at the same time. Given its system requirements, **installation of ProcessMaker 4 will be done in the Linux subsystem**. 
1. The Ubuntu Linux distribution will be installed by default. [Other](https://learn.microsoft.com/en-us/windows/wsl/basic-commands#install-a-specific-linux-distribution) Linux distributions can also be installed. 
1. Restart your machine after WSL installation process is completed. 
1. Open the [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/) in your machine and open a window for the Linux distribution installed previously. 
    - Note that you can also run a Linux distribution from PowerShell or CMD with the `wsl` command. Just make sure you are performing the installation steps on `/mnt/c/Users/<your-username>` (Linux) and **NOT** on `C:\Users\<your-username>` (Windows). 
1. Follow the steps for your specific Linux distribution in one of the sections below. 

</p>
</details>

<details><summary>Ubuntu</summary>
<p>
Copy the steps over from PM Confluence page. Explore the possibility of creating one or multiple shell scripts that have all of the commands to install the needed services. Obviously, in the cases this makes sense. For example, when installing PM itself it might not be the best idea since it will ask you (user) questions and expect data input. So it would make more sense from UX standpoint to execute on its own. 
  
When you are done creating scripts, finish this steps section. Then, erase the data in the Linux box and try to do the installation from scratch. With the two things to really figure out being: if we really need supervisor service and the permissions thing for nginx (www-data). Consult the notepad and google doc for more on these. 
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
