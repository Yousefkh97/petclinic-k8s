# The official image used for java platform, pulling the latest version of openjdk
FROM openjdk 

# Argument name that we can use later
ARG JAR_FILE=target/*.jar

# Copying the jar files from target directory
COPY ${JAR_FILE} app.jar

# Exposing the default port of the petclinic application
EXPOSE 8080

# The command that runs when the container starts with change from default profile to mysql profile in order to use mysql DB
ENTRYPOINT ["java","-jar","/app.jar", "--spring.profiles.active=mysql"]