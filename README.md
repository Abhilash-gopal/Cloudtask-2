Task : II 

Set Up a Virtualized Environment Using Docker
Create a virtualized or containerized environment that runs a basic service. The service could be a web server (Nginx or Apache) or any simple application you’ve built. 
Create a Dockerfile that defines how to build the container. The Dockerfile should specify the OS, dependencies, and how to run the service inside the container.
Provide detailed instructions for how you created the environment, either using Docker or VMs. Include steps for configuring and accessing the service.

Assignment solution

Launched an ubuntu VM on GCP

SSH into the VM

Updated the packages

sudo apt update

Installed Docker

sudo apt install docker.io
    
Created a Dockerfile 

Vi Dockerfile

Created an index.html and style.css files

Build docker image using Dockerfile

sudo docker build -t my-image:latest .

View the newly created docker image  

sudo docker images


Run docker container using this image

sudo docker run -d - -name my-app -p 80:80 my-image:latest

 
 View the running container

sudo docker ps



View the hosted service 

  Search  http://35.208.40.95/ on browser

