# Use an OpenJDK runtime base image with version 11
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application JAR file into the container at path /app
COPY target/your-application.jar /app/your-application.jar

# Copy application configuration files into the container
COPY config/application.properties /app/config/application.properties

# Expose port 8080 to allow communication to the container
EXPOSE 8080

# Specify the command to run your application when the container starts
CMD ["java", "-jar", "your-application.jar"]

