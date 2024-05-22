
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim
#COPY /project/target/helloworld-1.1.jar /app/helloworld-1.1.jar
COPY . .
CMD ["sh", "-c", "echo 'Current directory:' && pwd && echo 'Files:' && ls -l]
WORKDIR /app
# Set the working directory in the container
#WORKDIR /app

# Copy the current directory contents into the container at /app
#COPY . .
#COPY /target/helloworld-1.1.jar .


# Run the JAR file
ENTRYPOINT ["java", "-jar", "helloworld-1.1.jar"]
#ENTRYPOINT ["sh", "-c", "sleep infinity"]
