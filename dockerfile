FROM openjdk:8-jdk
 
# Add a volume pointing to /tmp
VOLUME /tmp
 
# Make port 9001 available to the world outside this container do
EXPOSE 8001 
 
# The application's jar file
ARG JAR_FILE=target/helloworld-0.0.1-SNAPSHOT.jar
 
# Add the application's jar to the container
ADD ${JAR_FILE} app.jar
 
# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]