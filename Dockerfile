#FROM golang:1.7.4-alpine
FROM alpine:3.5

MAINTAINER Jarle Igel

#ENV SOURCES src/github.com/packtpublishing/cloud-native-go
#ADD . ${SOURCES}
#RUN cd ${SOURCES} && CGO_ENABLED=0 go install github.com/packtpublishing/cloud-native-go
COPY ./cloud-native-go /app/cloud-native-go
RUN chmod +x /app/cloud-native-go

ENV PORT 8080
EXPOSE  8080

#ENTRYPOINT cloud-native-go
ENTRYPOINT /app/cloud-native-go