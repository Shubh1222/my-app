# Pull base image 
From tomcat:11-jdk11 

# Maintainer 
MAINTAINER "shubham.v.wadekar12061999@gmail.com"
COPY ./my-app.war /var/lib/tomcat9/webapps
