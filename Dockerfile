
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .


# Run the JAR file
ENTRYPOINT ["java", "-jar", "helloworld-1.1.jar"]
#ENTRYPOINT ["sh", "-c", "sleep infinity"]
