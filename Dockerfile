FROM hypriot/rpi-java:latest

MAINTAINER Geert Van Bastelaere <geert.van.bastelaere@gmail.com>

RUN mkdir -p /activiti

WORKDIR /activiti

ADD https://github.com/geertvb/activiti-boot/releases/download/v1.0/activiti-boot-1.0.jar ./activiti-boot.jar

EXPOSE 8080

CMD ["java", "-jar", "activiti-boot.jar"]
