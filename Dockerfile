FROM maven:3.9-amazoncorretto-17-alpine AS build

WORKDIR /app
COPY . .
RUN mvn install -DskipTests=true

FROM amazoncorretto:17-alpine-jdk

WORKDIR /run
COPY --from=build /app/target/shopapp-0.0.1-SNAPSHOT.jar /run/shopapp-0.0.1-SNAPSHOT.jar

EXPOSE 8088

ENTRYPOINT ["java", "-jar", "/run/shopapp-0.0.1-SNAPSHOT.jar"]