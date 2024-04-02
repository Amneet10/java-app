# Use a base image with Java installed
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application into the container
COPY main.java /app

# Compile the Java application
RUN javac main.java

# Define the command to run the Java application
CMD ["java", "HelloWorld"]
