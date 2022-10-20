# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "shubham.v.wadekar12061999@gmail.com"
COPY target/my-app.war /usr/local/tomcat/webapps
