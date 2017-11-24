FROM frolvlad/alpine-oraclejdk8:slim
COPY build/libs/example-0.0.1-SNAPSHOT.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.war"]
