# 1. Use Java 17 as the base environment
FROM eclipse-temurin:17-jdk-alpine

# 2. Tell Docker where our built Java file is
ARG JAR_FILE=target/*.jar

# 3. Copy the Java file inside the Docker container and rename it to app.jar
COPY ${JAR_FILE} app.jar

# 4. Open port 8080 (the default Java web port)
EXPOSE 8080

# 5. The command to start the application ("biaram bala")
ENTRYPOINT ["java", "-jar", "/app.jar"]
