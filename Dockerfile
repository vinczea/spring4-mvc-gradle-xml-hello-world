FROM frolvlad/alpine-oraclejdk8:slim
COPY build/libs/example.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]
