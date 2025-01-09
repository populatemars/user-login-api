# Use a base image with OpenJDK and Maven pre-installed
FROM maven:3.8.7-openjdk-17-slim

# Set working directory inside the container
WORKDIR /app

# Copy your project files to the container
COPY . .

# Build the project
RUN mvn clean install

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "target/user-login-0.0.1-SNAPSHOT.jar"]
