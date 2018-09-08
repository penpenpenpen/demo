FROM ubuntu:latest                                                                                                                                                 
                                                                                             
MAINTAINER chen.wu@yeepay.com                                                                
                                                                                             
ADD demo /usr/local/                                                                             
                                                                                             
WORKDIR /usr/local/                                                                          
                                                                                             
CMD["./demo"]  
