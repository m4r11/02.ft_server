#!/bin/bash
##########################################################################################
#		
#   Project: ft_server	
#				                                    
#	Version 0.1
#	by:@mvaldeta
#
#	enjoy :)
#########################################################################################
########################################################################################
# START
########################################################################################
docker run --name ft_server -it -p 80:80 -p 443:443  -e AUTOINDEX=on ft_server
