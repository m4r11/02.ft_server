#  ft_server
## Automate the creation of a web server with Docker deployment 

###### About  
```
Version 1.0
This server will run multiples services: Wordpress,  
phpMyAdmin, and a SQL database."
```
![change img](https://github.com/m4r11/02.ft_server/blob/main/z.media/Screen%20Shot%202021-06-15%20at%2015.29.28.png)
###### Tools
```
Since docker for mac is not ideal 😋
We're using docker-machine (thanks @pmora)
Commands as follow:

-> docker-machine create docker —> create the docker vm
-> docker-machine start docker -> pretty obv, starts docker !!!!!
 ->eval $(docker-machine env docker) -> to run docker commands inside the shell, if error msg saying “is the docker dameon running” run this command (after starting the machine)

docker-machine ip docker -> get the ip of the machine

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

###### Change it 
```
TODO1: make the script to launch the docker-machine   
TODO2: make a script to run all this at once   
```