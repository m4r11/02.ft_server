#!/bin/bash
########################################################################################
#   Project: ft_server					                                    
#	Version 0.1
#	by:@mvaldeta
#	enjoy :)
########################################################################################
# BUILD
########################################################################################
# stop running in case comands fails
########################################################################################

set -eu

########################################################################################
# set up message color
########################################################################################

BLUE='\033[01;36m'
echo "${BLUE}--------------------------------------------------------"
echo "${BLUE}************************* BUILDING *********************"
echo "${BLUE}--------------------------------------------------------"

########################################################################################
# build  docker
########################################################################################

docker build -t ft_server:latest . 
