FROM ubuntu:latest                                                                                                                                                 
                                                                                             
MAINTAINER chen.wu@yeepay.com                                                                
                                                                                             
ADD https://github.com/penpenpenpen/demo /usr/local/                                                                             
                                                                                             
WORKDIR /usr/local/                                                                          
                                                                                             
CMD["./jenkins"]  
