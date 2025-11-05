FROM ubuntu:latest
WORKDIR /root
VOLUME .:/root/glassfish7/
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Sao_Paulo
RUN apt update -y
RUN apt install openjdk-11-jdk -y
RUN echo 'export PATH=$PATH:/root/glassfish7/bin' > /root/.bashrc
