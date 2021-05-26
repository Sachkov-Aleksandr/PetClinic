FROM ubuntu:18.04

WORKDIR /usr/src/spring-petclinic

COPY . .

RUN apt-get update && \
    apt-get install -y openjdk-8-jre && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y maven && \
    cd /usr/src/spring-petclinic  && \ 
    ls -la /usr/src/spring-petclinic

CMD java -jar target/*.jar
