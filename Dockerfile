FROM ubuntu:latest                                                                                                                                                 
                                                                                             
MAINTAINER chen.wu@yeepay.com                                                                
                                                                                             
ADD /var/jenkins_home/ /usr/local/                                                                             
                                                                                             
WORKDIR /usr/local/                                                                          
                                                                                             
CMD["./demo"]  
