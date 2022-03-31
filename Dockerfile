FROM ubuntu 
RUN apt-get -y update && apt-get -y install git
ADD VERSION .

