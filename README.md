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
|<img src="https://github.com/m4r11/02.ft_server/blob/40ca65ecb70f268d2129685fda9f481ec3ea00ae/media/Screen%20Shot%202021-06-21%20at%204.53.34%20PM.png" width="200"> 1)./build.sh |<img src="https://github.com/m4r11/02.ft_server/blob/40ca65ecb70f268d2129685fda9f481ec3ea00ae/media/Screen%20Shot%202021-06-21%20at%204.56.51%20PM.png" width="200"> 2)./start.sh |<img src="https://github.com/m4r11/02.ft_server/blob/main/media/Screen%20Shot%202021-06-21%20at%204.58.10%20PM.png"> 3)./stop.sh |<img src="https://64.media.tumblr.com/30b98071c89271d8b2de5f8caeb60885/27d8b878f7373bc3-45/s1280x1920/33724b1b0f3bf754bcb9b1613026e853d6c09be1.jpg" width="300"> sub here|

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
4 -> ping ip of dockermachine
4 -> write ip in web browser
4 -> enjoy and test
5 -> autoindex ./autoindex.sh on/off
6 -> new term, run stop.sh to finish
```
![putimageindex_here](https://github.com/m4r11/02.ft_server/blob/main/media/Screen%20Shot%202021-06-19%20at%209.26.18%20PM.png)
```

###### TODO 
```
TODO1: make the script to launch the docker-machine   
TODO2: make a script to run all this at once   
```
