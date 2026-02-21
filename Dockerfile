FROM eclipse-temurin:8-jre-alpine
LABEL maintainer="Shivakumar Ningappa <shivagowda@gmail.com>"

# 1. Create a dedicated app folder
WORKDIR /app

# 2. Copy the jar AND your website files into /app
COPY target/jhttp-1.0-SNAPSHOT.jar /app/jhttp.jar
COPY index.html /app/
COPY blue-bird.png /app/

# 3. Expose port 8888
EXPOSE 8888

# 4. Run the jar FROM the /app directory
ENTRYPOINT [ "java", "-jar", "jhttp.jar" ]
