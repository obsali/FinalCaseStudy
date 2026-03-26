FROM eclipse-temurin:17-jdk AS builder

WORKDIR /app

# Copy Maven wrapper and project metadata first for better build caching.
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

RUN chmod +x mvnw && ./mvnw -q -DskipTests dependency:go-offline

COPY src src

RUN ./mvnw -DskipTests clean package

FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=builder /app/target/casestudy-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
