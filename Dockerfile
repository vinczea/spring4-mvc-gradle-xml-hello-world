FROM tomcat:8.0.20-jre8

COPY build/libs/example.war /usr/local/tomcat/webapps/example.war