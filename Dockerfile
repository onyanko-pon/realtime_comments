FROM golang:1.16

ENV GOPATH=$HOME/go
ENV PATH=$PATH:$GOPATH/bin

RUN mkdir /app
WORKDIR /app

COPY ./ /app/
RUN go mod download
RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

EXPOSE 8080
ENV PORT=8080
CMD go run src/main.go