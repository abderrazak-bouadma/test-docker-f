FROM ubuntu:14.04
MAINTAINER Bouadma Abderrazak
RUN apt-get update
RUN apt-get -y install oracle-java8-installer
RUN apt-get -y install git
RUN apt-get -y install maven
RUN mkdir projects
RUN cd projects
RUN git clone [PROJECT_URL]
RUN mvn clean install
RUN mvn spring-boot:run -DskipTests

