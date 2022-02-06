# Mosh Tutorial(Docker Tutorial for Beginners [2021]): https://www.youtube.com/watch?v=pTFZFxd4hOI

# use node image with aplie linux distro
FROM node:alpine 
# copy all app files to /app location in image
COPY . /app 
#set current directory to /app
WORKDIR /app
#run the app.js file (start file etc)
CMD node app.js

#run console command from same directory: `docker build -t hello-docker .` to create the image

#`docker images` to see all images on machine | EX:
#REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
#hello-docker   latest    3c3ad9dd6c92   40 seconds ago   169MB

#this contains the entire container needed to run this app, this can be run on any computer running docker

#to run on any computer running docker: `docker run hello-docker`

#publish (or find) image to docker hub so anyone can use it in a standardized way
#pull
#`docker pull codewithmosh/hello-docker`

#see list of running docker processes: `docker ps`
#`docker ps -a` will show all proccesses including those that have stopped 

#to start a container and interact with it: `docker run -it ubuntu`
#once command is run you are provided a `shell` - a shell is a program that takes commands and passes them to the OS

#Package Management
#like npm there is a package manager called `apt` in ubuntu
# for example to install a package 
# 1st run `apt update` to pull a list of availablke packages from the internet
#then you can run `apt install nano`