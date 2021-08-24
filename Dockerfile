FROM golang:1.16

ENV GO_PATH=/go

RUN mkdir /app
WORKDIR /app

COPY ./src/* /app/

EXPOSE 8080
ENV PORT=8080
CMD go run main.go