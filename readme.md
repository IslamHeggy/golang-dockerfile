Golang Multistage Docker File 
==============================

This docker file creates a Golang image that runs a small sized Golang container of your code using a multistaged docker file.


## Notes

* Adapt this file to your service by changing the service name and the project name inside the docker file before building.
* Copy your needed Golang libraries in the docker context before building so it can be succesfully copied in the container.
* Ensure that you have the needed docker version for multistages docker file.
* This docker file is tested with docker 18.09
