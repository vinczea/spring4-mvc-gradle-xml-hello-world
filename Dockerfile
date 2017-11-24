FROM tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps

COPY build/libs/example.war /usr/local/tomcat/webapps/example.war