FROM golang:1.16

ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor
EXPOSE 80
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN cd server && go build wiki.go
ENTRYPOINT ["./entrypoint.sh"]
