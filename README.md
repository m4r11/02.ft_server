# 02.ft_server
## System administration -> Docker &amp; the creation of a web server

###### Subject
```
"This topic is intended to introduce you to system administration.  
It will make you aware of the importance of using scripts to automate your tasks.  
For that, you will discover the "docker" technology and use it to install a complete web server.  
This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database."
```

###### Server
```
server : is a role, that computer takes. Every computer could be a server.
lemp : Linux, Nginx, MySQL, PHP.
Nginx : hmm yes very good reverse proxy 😂

&& 

"[engine x] is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server,  
originally written by Igor Sysoev. For a long time, it has been running on many heavily loaded Russian  
sites including Yandex, Mail.Ru, VK, and Rambler.  
According to Netcraft, nginx served or proxied 23.06% busiest sites in March 2021."
https://nginx.org/en/"
```
###### What is a Self-Signed SSL Certificate?
```
A self-signed SSL certificate is a certificate that is signed by the person who created it rather than a trusted certificate authority. Self-signed certificates can have the same level of encryption as the trusted CA-signed SSL certificate.

Web browsers do not recognize the self-signed certificates as valid. When using a self-signed certificate, the web browser shows a warning to the visitor that the web site certificate cannot be verified.
```
###### Install phpMyAdmin with Nginx on Debian 10 Buster
```
Install LEMP Stack on Debian 10 Buster
As a prerequisite of running phpMyAdmin with Nginx, you need to have installed and setup LEMP Stack on Debian 10 Buster. If you have not, you can follow the link below to setup LEMP stack on Debian 10.
[more](https://kifarunix.com/install-phpmyadmin-with-nginx-on-debian-10-buster/)
```
###### SSL key

[Generate](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)
```
A self-signed SSL certificate is a certificate that is signed by the person who created it rather than a trusted certificate authority. Self-signed certificates can have the same level of encryption as the trusted CA-signed SSL certificate.

Web browsers do not recognize the self-signed certificates as valid. When using a self-signed certificate, the web browser shows a warning to the visitor that the web site certificate cannot be verified.
```
###### Extra
```
Colors for messages: https://en.wikipedia.org/wiki/ANSI_escape_code#Colors
More on Docker : https://docs.docker.com/
Another tutorial: https://www.scaleway.com/en/docs/deploy-wordpress-with-lemp/
```

## re-Sources

[Barani Murthy](https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a)  
[Manny](https://codingwithmanny.medium.com/custom-wordpress-docker-setup-8851e98e6b8)  
[Hub-Docker](https://hub.docker.com/_/nginx)    
[Docker Curriculum](https://docker-curriculum.com/)  
[kukinpower](https://github.com/kukinpower)  
[forhjy](https://forhjy.medium.com/how-to-install-lemp-wordpress-on-debian-buster-by-using-dockerfile-1-75ddf3ede861)  
[thegeekdiary](https://www.thegeekdiary.com/how-to-install-docker-on-mac/)  

## What I'm doing

```
0->  checking for docker: env | grep DOCKER
1->  getting docker: download.dmg
2->  checking version: docker version
3->  realizing apt-get is == brew on macOs
4->  updating brew
4->  brew instal mysql
5->  brew tap homebrew/services
6->  brew services start mysql
7->  mysqladmin -u root password 'yourPassHere'
8->  docker pull mysql/mysql-server
9->  inside ft_server created a Dockerfile
10-> can't be empty
11-> docker build -t nginx .
12-> stopping containers: create a stop.sh run with: sh stop.sh
13-> on/browser type: localhost
14-> term: docker run -d -p 80:80 docker/getting-started
15-> docker build -t nginx .
16-> //created another container for test// 
17-> docker build -t test . 
18-> docker run -d -p 8080:80 test 
19-> http://localhost:8080/ -> Welcome to nginx 😎 
20-> confirm ID with: docker ps
21-> enter this container with: docker exec -it [CONTAINER_ID] /bin/sh
22-> # work && exit the cointainer with:exit
23-> finish confir id: docker ps -a 
24-> docker commit [CONTAINER_ID] [image_name]
25-> finnish confir id: docker ps -a 
26-> updated nginx.config 
27-> check syntax: nginx -t 
28-> nginx -s reload
29-> brew services restart nginx
30-> if you get :nginx: [emerg] bind() to 0.0.0.0:80 failed (48: Address already in use) use command bellow ⬇️
31-> (and you did ps and already killed the pid docker) use this: lsof -nPL -iTCP:8080
32-> this will list all the pro. run: nginx -s stop
32-> this can help u figure out wich processes are using the same port but with a hidden name: ps -ef | grep nginx.
33-> if nothing else works go on you activity monitor and kill all docker processes and restart.

```
