# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

# Set the working directory
WORKDIR /app

# Copy the project files to the container
COPY . .

# Build the project
RUN ./mvnw clean install

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/your-app.jar"]
