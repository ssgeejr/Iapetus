FROM tomcat:7-jre8
# FROM tomcat:7.0.105-jdk8-openjdk-slim * Fails with some security error

LABEL maintainer="ioexcept@gmail.com"
LABEL version="1.1"

RUN rm -rf /usr/local/tomcat/webapps/*

ADD iapetus.war /usr/local/tomcat/webapps/
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar /usr/local/tomcat/lib/

ADD server.xml /usr/local/tomcat/conf/server.xml

VOLUME /usr/local/tomcat/logs

RUN rm -rf /usr/local/tomcat/webapps/ROOT*

#COPY ROOT.war /usr/local/tomcat/webapps/