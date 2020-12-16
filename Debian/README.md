# Ansible
## ansible_install.sh
## Role of script:
- Downloads the prerequisites for Ansible
- Adds the repository `deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main` to `/etc/apt/sources.list.d/ansible.list`
- Adds the keys for the keyserver and updates, then installs Ansible

### Ansible: What it is and how it works
> "Ansible is a universal language, unraveling the mystery of how work gets done. Turn tough tasks into repeatable playbooks. Roll out enterprise-wide protocols with the push of a button." - [Ansible](https://www.ansible.com/)

> "Ansible is a radically simple IT automation engine that automates cloud provisioning, configuration management, application deployment, intra-service orchestration, and many other IT needs. Designed for multi-tier deployments since day one, Ansible models your IT infrastructure by describing how all of your systems inter-relate, rather than just managing one system at a time. It uses no agents and no additional custom security infrastructure, so it's easy to deploy - and most importantly, it uses a very simple language (YAML, in the form of Ansible Playbooks) that allow you to describe your automation jobs in a way that approaches plain English." - [How Ansible Works](https://www.ansible.com/overview/how-ansible-works)

# Docker and Docker-Compose
## docker_and_compose_install_config.sh
## Role of script:
- Installs Docker and Docker-Compose
- Adds $USER to the group Docker so that `docker` can be run wtihout sudo

### Docker: What it is and how it works
> "Docker is a platform for developers and sysadmins to build, run, and share applications with containers. The use of containers to deploy applications is called containerization. Containers are not new, but their use for easily deploying applications is." - [Docker Concepts](https://docs.docker.com/get-started/)

### Docker-Compose: What it is and how it works
> "Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration. To learn more about all the features of Compose, see [the list of features](https://docs.docker.com/compose/#features)" - [Docker-Compose](https://docs.docker.com/compose/)

# Grafana
## grafana_install.sh
## Role of script:
- Installs Grafana, Nginx, and MariaDB
- Points to the change that should be made in `/etc/grafana/grafana.ini` file
- Removes the "default" config file for Nginx
- Creates a new Nginx config file called grafana that has Grafana listen on port 80 instead of 3000, so when you open up https://exmaple.com/login, you get taken straight Grafana through there instead of https://example.com:3000/login

### Grafana: What it is and how it works:
> "Grafana allows you to query, visualize, alert on and understand your metrics no matter where they are stored. Create, explore, and share dashboards with your team and foster a data driven culture. Trusted and loved by the community." - [Grafana](https://grafana.com/grafana/)

# Jellyfin
## jellyfin_install.sh
## Role of script:
- Installs, starts, and enables Jellyfin.

### Jellyfin: What it is and how it works:
> "The Free Software Media System."
>
> "Jellyfin is the volunteer-built media solution that puts you in control of your media. Stream to any device from your own server, with no strings attached. Your media, your server, your way." - [Jellyfin](https://jellyfin.org/)

# Jitsi
## jitsi_install.sh
## Role of script:
- Installs Jitsi

### Jitsi: What it is and how it works:
> "Jitsi is a set of open-source projects that allows you to easily build and deploy secure video conferencing solutions. At the heart of Jitsi are Jitsi Videobridge and Jitsi Meet, which let you have conferences on the internet, while other projects in the community enable other features such as audio, dial-in, recording, and simulcasting." - [Jitsi](https://jitsi.org/about/)

# Jitsi - Enable HTTPS
## secure_jitsi_install.sh
## Role of script:
- Uses Certbot to create an https connection

# Nginx and Certbot
## nginx_certbot_install.sh
## Role of script:
- Installs Nginx - Web server
- Installs Certbot - Manual SSL certificates

### Nginx: What it is and how it works:
> "nginx [engine x] is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server, originally written by [Igor Sysoev](http://sysoev.ru/en/)." - [nginx.org](https://nginx.org) and [nginx.com](https://nginx.com)

### Certbot: What it is and how it works:
> "Certbot is a free, open source software tool for automatically using [Let’s Encrypt](https://letsencrypt.org/) certificates on manually-administrated websites to enable HTTPS."
>
> "Certbot is made by the [Electronic Frontier Foundation (EFF)](https://www.eff.org/), a 501(c)3 nonprofit based in San Francisco, CA, that defends digital privacy, free speech, and innovation." - [Certbot](https://certbot.eff.org/about/)

# PHP and MariaDB
## nginx_php_mariadb_certbot_install.sh
## Role of script:
- Installs Nginx, PHP, MariaDB, and Cerbot

### PHP: What it is and how it works:
> "PHP is a popular general-purpose scripting language that is especially suited to web development."
>
> "Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world." - [PHP](https://www.php.net/)

### MariaDB: What it is and how it works:
> "MariaDB Server is one of the most popular database servers in the world. It’s made by the original developers of MySQL and guaranteed to stay open source. Notable users include Wikipedia, WordPress(.)com, and Google."
>
> "MariaDB turns data into structured information in a wide array of applications, ranging from banking to websites. Originally designed as enhanced, drop-in replacement for MySQL, MariaDB is used because it is fast, scalable and robust, with a rich ecosystem of storage engines, plugins and many other tools make it very versatile for a wide variety of use cases."
>
> "MariaDB is developed as open source software and as a relational database it provides an SQL interface for accessing data. The latest versions of MariaDB also include GIS and JSON features." - [MariaDB](https://mariadb.org/about/)

# Pi-Hole
## pihole_install.sh
## Role of script:
- Installs Pi-Hole

### Pi-Hole: What it is and how it works:
> "The Pi-hole® is a [DNS sinkhole](https://en.wikipedia.org/wiki/DNS_Sinkhole) that protects your devices from unwanted content, without installing any client-side software. Network-wide ad blocking." - [Pi-Hole](https://docs.pi-hole.net/)

# Post Installation
## post_install_server_setup.sh
## Role of script:
- Install/Uninstall common utilities and programs

I made this script to install softare from `tasksel` which runs during the initial installation of Debian 10. I've also added a few other items to it that I wanted installed by "default" on all of my fresh Debian installations.

# PowerShell
## powershell_install.sh
## Role of script:
- Installs PowerShell Core v7

### PowerShell: What it is and how it works:

> "PowerShell is a cross-platform task automation and configuration management framework, consisting of a command-line shell and scripting language. Unlike most shells, which accept and return text, PowerShell is built on top of the .NET Common Language Runtime (CLR), and accepts and returns .NET objects. This fundamental change brings entirely new tools and methods for automation." - [Microsoft Documentation](https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.1)

> "Welcome to the PowerShell GitHub Community! PowerShell Core is a cross-platform (Windows, Linux, and macOS) automation and configuration tool/framework that works well with your existing tools and is optimized for dealing with structured data (e.g. JSON, CSV, XML, etc.), REST APIs, and object models. It includes a command-line shell, an associated scripting language and a framework for processing cmdlets." - [PowerShell Core](https://github.com/powershell/powershell)

# SELinux
## selinux_install.sh
## Role of Script:
- Installs SElinux: basics, policy default, and auditd

### SELinux: What it is and how it works
> "SELinux is a security enhancement to Linux which allows users and administrators more control over access control.
>
> Access can be constrained on such variables as which users and applications can access which resources. These resources may take the form of files. Standard Linux access controls, such as file modes (-rwxr-xr-x) are modifiable by the user and the applications which the user runs. Conversely, SELinux access controls are determined by a policy loaded on the system which may not be changed by careless users or misbehaving applications.
>
> SELinux also adds finer granularity to access controls. Instead of only being able to specify who can read, write or execute a file, for example, SELinux lets you specify who can unlink, append only, move a file and so on. SELinux allows you to specify access to many resources other than files as well, such as network resources and interprocess communication (IPC)." [SELinux](https://selinuxproject.org/page/Main_Page)

# YOURLS
## yourls_install.sh
## Role of script:
- Install YOURLS to a web server

### YOURLS: What it is and how it works
> "YOURLS stands for Your Own URL Shortener. It is a small set of PHP scripts that will allow you to run your own URL shortening service (a la TinyURL or Bitly)."
>
> "Running your own URL shortener is fun, geeky and useful: you own your data and don't depend on third-party services. It's also a great way to add branding to your short URLs, instead of using the same public URL shortener everyone uses." - [YOURLS](https://yourls.org/)
