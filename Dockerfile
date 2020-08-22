FROM openjdk:8-jdk-alpine

RUN mkdir -p /apps/logs

COPY locationservice.jar /apps/locationservice.jar

#ADD serviceAccountKey.json /home/webpushnotification/serviceAccountKey.json

WORKDIR /apps

ENTRYPOINT exec java -jar location:service.jar


#FROM openjdk:8-jdk-alpine

#RUN mkdir -p /apps/logs

#COPY authorization-service.jar /apps/authorization-service.jar

#ADD serviceAccountKey.json /home/webpushnotification/serviceAccountKey.json

#WORKDIR /apps

#ENTRYPOINT exec java -jar authorization-service.jar
