FROM openjdk:11
EXPOSE 8080
ADD target/jenkins-devops.jar jenkins-devops.jar
ENTRYPOINT ["java", "-jar","/jenkins-devops.jar"]
