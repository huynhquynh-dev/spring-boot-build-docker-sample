FROM centos

RUN yum install -y java

VOLUME /tmp
ADD /target/spring-boot-web-0.0.1-SNAPSHOT.jar myapp.jar
RUN sh -c 'touch /myapp.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./uradom","-jar","myapp.jar"]