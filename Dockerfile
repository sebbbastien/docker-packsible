FROM ubuntu:18.04

RUN apt-get --assume-yes install software-properties-common
RUN add-apt-repository universe
RUN apt-get update

RUN apt-add-repository ppa:ansible/ansible
RUN apt-get --assume-yes install ansible packer
