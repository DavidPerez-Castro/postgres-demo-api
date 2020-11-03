# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="adsoft@live.com.mx"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
<<<<<<< HEAD
EXPOSE 5022

# The application's jar file
ARG JAR_FILE=target/ng5-api-0.0.1-SNAPSHOT.jar
=======
EXPOSE 8192

# The application's jar file
ARG JAR_FILE=target/postgres-demo-0.0.1-SNAPSHOT.jar
>>>>>>> 64584a23b019e352ea30155f36a6234f747c0ae6

# Add the application's jar to the container
ADD ${JAR_FILE} ng5-api.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ng5-api.jar"]

# docker build
# sudo docker build -t <dockerhub-user>/ng5-api .

# docker run
<<<<<<< HEAD
# sudo docker run --name <linuxuser>-api -p 8xxx:8080 <dockerhub-user>/ng5-api  
=======
# sudo docker run --name <linuxuser>-api -p 8xxx:8080 <dockerhub-user>/ng5-api 
>>>>>>> 64584a23b019e352ea30155f36a6234f747c0ae6
