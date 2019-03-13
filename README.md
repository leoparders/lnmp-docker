# lnmp-docker

Deploy lnmp(Linux, Nginx, MySQL, PHP7) using docker, support full feature functions.

## 1. Feature
- Easy install,upgrade and use.
- Easy add a web site.
- Easy manage your database
- Easy add ssl & dnsssl to your web site
- Multi platforms via docker
- All configs stored on host

## 2. Architecture
![lnmp-docker-architecture](https://github.com/leopardor/lnmp-docker/blob/master/lnmp-docker-Architecture.png?raw=true)

The whole server is divided into three docker containers:

Nginx is running in ***lnmp-docker-nginx-acme*** container, which handles requests and makes responses.

PHP or PHP-FPM is running in ***lnmp-docker-php-mysqli*** container, it retrieves php scripts from host, interprets, executes then responses to Nginx. If necessary, it will connect to MySQL as well.
MySQL is running  in ***lnmp-docker-mysql*** container,

## 3. Build and Run
At first, you should have had Docker and Docker Compose installed.

Without building images one by one, you can make use of docker-compose and simply issue:

    $ sudo docker-compose up
For more operations to containers, please refer to:

$ sudo docker-compose --help
## 4. How to use
### Build docker image & container via lnmp-docker:

    $ ./lnmp-docker rebuild

### Start Sever:

    $ sudo ./lnmp-docker start

### Add virtual host:

    $ sudo ./lnmp-docker vhost add
![lnmp-docker add vhost](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-docker-add-vhost.png?raw=true)

### List virtual host:

    $ sudo ./lnmp-docker vhost list
![lnmp-docker list vhost](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-docker-list-vhost.png?raw=true)

### Delete virtual host:

    $ sudo ./lnmp-docker vhost del
![lnmp-docker delete vhost](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-docker-del-vhost.png?raw=true)

### Add database:

    $ sudo ./lnmp-docker database add
![lnmp-docker add database](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-dokcer-add-database.png?raw=true)

### List database:

    $ sudo ./lnmp-docker database list
![lnmp-docker list database](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-dokcer-list-database.png?raw=true)

### Delete database:

    $ sudo ./lnmp-docker database del
![lnmp-docker delete database](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-dokcer-del-database.png?raw=true)

### Add ssl:

    $ sudo ./lnmp-docker ssl add
![lnmp-docker Add ssl](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-dokcer-add-ssl.png?raw=true)

### Add dnsssl via API Key:

    $ sudo ./lnmp-docker dnsssl ali
![lnmp-docker Add dnsssl via API Key](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-docker-dnsssl.png?raw=true)

### Force renew ssl:

    $ sudo ./lnmp-docker renew your_domain
![lnmp-docker renew ssl](https://github.com/leopardor/lnmp-docker/blob/master/assets/lnmp-dokcer-renew-ssl.png?raw=true)


## 5. Contributors

## 6. Support

## 7. License
