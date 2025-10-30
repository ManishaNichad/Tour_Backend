# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy all files to the container
COPY . .

# Give permission to mvnw
RUN chmod +x mvnw

# Build the Spring Boot app
RUN ./mvnw clean package -DskipTests

# Expose the port your app runs on
EXPOSE 8080

# Start the app
CMD ["java", "-jar", "target/*.jar"]
