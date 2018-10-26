FROM ubuntu:18.04

RUN apt update
RUN apt --assume-yes install software-properties-common

RUN add-apt-repository universe
RUN apt-add-repository ppa:ansible/ansible
RUN apt update

RUN apt --assume-yes install ansible packer
