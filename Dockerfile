FROM golang:alpine

ENV PACKER_DEV=1

RUN apk add --update git bash openssl
RUN go get github.com/mitchellh/gox
RUN go get github.com/hashicorp/packer

RUN apk add ansible
