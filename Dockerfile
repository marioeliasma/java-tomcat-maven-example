
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/java-tomcat-maven-example-1.0-SNAPSHOT.jar java-tomcat-maven-example.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar java-tomcat-maven-example.jar
