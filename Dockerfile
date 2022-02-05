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

#`docker image` to see all images on machine | EX:
#REPOSITORY     TAG       IMAGE ID       CREATED          SIZE
#hello-docker   latest    3c3ad9dd6c92   40 seconds ago   169MB

#this contains the entire container needed to run this app, this can be run on any computer running docker

#to run on any computer running docker: `docker run hello-docker`

#publish (or find) image to docker hub so anyone can use it in a standardized way
#pull
#`docker pull codewithmosh/hello-docker`