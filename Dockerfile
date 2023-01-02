FROM jenkins/ssh-agent:jdk11

RUN apt-get update -y && \
    apt-get install -y python && \
    apt-get install -y git
