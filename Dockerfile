FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
# RUN apt-get update && apt-get install -y python-pip
# RUN pip install awscli --ignore-installed six
ENTRYPOINT ["java","-jar","/app.jar"]