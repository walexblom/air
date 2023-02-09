FROM golang:1.16

MAINTAINER Rick Yu <cosmtrek@gmail.com>

ENV GOPATH /go
ENV GO111MODULE on

COPY . /go/src/github.com/walexblom/air
WORKDIR /go/src/github.com/walexblom/air
RUN make ci && make install

ENTRYPOINT ["/go/bin/air"]
