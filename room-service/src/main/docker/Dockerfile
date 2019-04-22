FROM openjdk:8-jdk-alpine
RUN  apk update && apk upgrade && apk add netcat-openbsd
RUN echo "Asia/Shanghai" > /etc/timezone
RUN mkdir -p /usr/local/roomservice
ADD @project.build.finalName@.jar /usr/local/roomservice/
ADD run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh