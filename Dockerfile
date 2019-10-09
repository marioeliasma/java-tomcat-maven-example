
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/java-tomcat-maven-example.war java-tomcat-maven-example.war
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar --port 3000 java-tomcat-maven-example.war
