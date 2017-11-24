FROM frolvlad/alpine-oraclejdk8:slim
COPY build/libs/spring4-mvc-gradle-xml-hello-world.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]
