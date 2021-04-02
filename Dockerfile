FROM openjdk:8-jdk-alpine
EXPOSE 8080:8080
ARG JAR_FILE=gradle/wrapper/gradle-wrapper.jar
WORKDIR /opt/app
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]