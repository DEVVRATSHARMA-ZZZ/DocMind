
# Stage 1: Build the Spring Boot application
FROM eclipse-temurin:25-jdk AS build

WORKDIR /app

# Copy Maven wrapper and project configuration
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./

# Give Maven wrapper execution permission
RUN chmod +x mvnw

# Copy backend source code
COPY src/ src/

# Build executable JAR
RUN ./mvnw clean package -DskipTests

# Stage 2: Run the application
FROM eclipse-temurin:25-jre

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
