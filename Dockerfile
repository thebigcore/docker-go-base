FROM nanoservice/protobuf:3.0-alpha

MAINTAINER Oleksii Fedorov <waterlink000@gmail.com>

RUN apk add --update bash go git

RUN mkdir -p /go/src

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get -u github.com/golang/protobuf/proto && \
    go get -a github.com/golang/protobuf/jsonpb && \
    go get -a github.com/golang/protobuf/protoc-gen-go

RUN apk del git

ENTRYPOINT []

WORKDIR /protos

