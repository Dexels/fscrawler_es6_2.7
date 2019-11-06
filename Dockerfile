FROM ubuntu

RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y unzip
RUN apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get update && apt-get install -y tesseract-ocr
RUN apt-get update && apt-get install -y tesseract-ocr-fra
RUN apt-get update && apt-get install -y gnupg2
RUN apt-get install -y software-properties-common
RUN apt-get install -y curl
RUN apt-get update && apt-get install -y emacs

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
RUN export JAVA_HOME


RUN mkdir /fsc
COPY bin/ /fsc/bin
COPY lib /fsc/lib
COPY LICENSE /fsc
COPY NOTICE /fsc
COPY readme/README.md /fsc

RUN mkdir /root/.fscrawler

COPY config/job_10 /root/.fscrawler/job_10

RUN mkdir /tmp/es


ADD start.sh .
RUN chmod +x start.sh

ENV SET_URL=$SURL
RUN export SET_URL

EXPOSE 8080

ENTRYPOINT ["./start.sh"]
