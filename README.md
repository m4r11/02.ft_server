<h2 align="center">
ft_server 
</h2>
<h6 align="center">
Automate the creation of a web server w/ php & wp services deploying a Docker container
version: 1.0
by: mvaldeta
</h6>

<h2>
</h2>

![IMG_COVER](https://64.media.tumblr.com/1d78a493131209373213778d68f4c7f7/tumblr_pgphx8YABJ1vehqeko1_1280.jpg)

###### About  
```
This server will run multiples services: Wordpress,  
phpMyAdmin, and a SQL database.
The automation scrips build, start and run."
```

###### Overview

| | | |
|:-------------------------:|:-------------------------:|:-------------------------:|
|<img src="https://64.media.tumblr.com/c5b04f340576ce5859ac69e6401450e3/6dab6b5c26e26f6c-30/s1280x1920/4b3d1abd358d41def4dbfb5b8d5ae40254d0cc88.jpg" width="200"> sub here|<img src="https://64.media.tumblr.com/33dbe83c6197a3cd6ad4310a0a5486bd/2176a82ead6fd58d-91/s1280x1920/beee5984a9e174ca46131c6196b61cc562744bb4.jpg" width="200"> sub here|<img src="https://64.media.tumblr.com/8da44fb8814ac1482f4a909f99f8ca41/2176a82ead6fd58d-89/s1280x1920/a16611cf91e0ba0ab41823313ff41dc4eb0cf3da.jpg" width="200"> sub here|<img src="https://64.media.tumblr.com/30b98071c89271d8b2de5f8caeb60885/27d8b878f7373bc3-45/s1280x1920/33724b1b0f3bf754bcb9b1613026e853d6c09be1.jpg" width="300"> sub here|

###### Tools
```
Since docker for mac is not ideal 😋
We're using docker-machine (thanks @pmora)
Commands as follow:
-> docker-machine create docker —> create the docker vm
-> docker-machine start docker -> pretty obv, starts docker !!!!!
-> eval $(docker-machine env docker) -> to run docker commands inside the shell, if error msg saying “is the docker dameon running” run this command (after starting the machine)
-> docker-machine ip docker -> get the ip of the machine
```
###### Usage
```
1 -> clone
2 -> cd
3 -> sh build.sh
3 -> sh start.sh
```
![build](https://github.com/m4r11/02.ft_server/blob/main/z.media/Screen%20Shot%202021-06-16%20at%2010.35.50.png)

![start](https://github.com/m4r11/02.ft_server/blob/main/z.media/Screen%20Shot%202021-06-16%20at%2010.35.50.png)
```
4 -> localhost
5 -> autoindex ./autoindex.sh on/off
```
![putimageindex_here]()
```
6 -> new term, run stop.sh to finish
```
![stop](https://github.com/m4r11/02.ft_server/blob/main/z.media/Screen%20Shot%202021-06-16%20at%2010.36.27.png)

###### TODO 
```
TODO1: make the script to launch the docker-machine   
TODO2: make a script to run all this at once   
```
