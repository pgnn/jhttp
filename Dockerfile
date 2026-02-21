FROM eclipse-temurin:8-jre-alpine
LABEL maintainer="Shivakumar Ningappa <shivagowda@gmail.com>"

# Copy the already build jar to the image
COPY target/jhttp-1.0-SNAPSHOT.jar /bin/
COPY index.html /app/
COPY logo.png /app/

# Expose default port for external communication
EXPOSE 8888

# Command to run the executable
ENTRYPOINT [ "java" ,"-jar",  "/bin/jhttp-1.0-SNAPSHOT.jar" ]
