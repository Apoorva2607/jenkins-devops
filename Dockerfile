FROM openjdk:11
EXPOSE 9091
ADD target/jenkins-devops.jar jenkins-devops.jar
ENTRYPOINT ["java", "-jar","/jenkins-devops.jar"]
