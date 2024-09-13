FROM openjdk:17

WORKDIR /app
EXPOSE 8761
COPY target/service-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
