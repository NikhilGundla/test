FROM java:8
VOLUME /tmp
ADD target/Spring_Test-0.0.1-SNAPSHOT.war springboot-application.war
RUN sh -c 'touch /springboot-application.war'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-war","springboot-application.war"]
EXPOSE 8081
