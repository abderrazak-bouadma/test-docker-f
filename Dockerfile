FROM ubuntu:14.10
MAINTAINER Bouadma Abderrazak
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
#RUN apt-get -y install add-apt-repository
#RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN apt-get -y install oracle-java8-installer
RUN apt-get -y install git
RUN apt-get -y install maven
RUN mkdir projects
RUN cd projects
RUN git clone git@github.com:jpuzzler/test-docker-f.git
RUN mvn clean install
RUN mvn spring-boot:run -DskipTests

