FROM ubuntu:18.04

RUN apt update
RUN apt --assume-yes install software-properties-common

RUN add-apt-repository universe
RUN apt-add-repository ppa:ansible/ansible
RUN apt update

RUN apt --assume-yes install ansible packer wget
RUN cd /root
RUN wget https://github.com/jetbrains-infra/packer-builder-vsphere/releases/download/v2.0.1/packer-builder-vsphere-iso.linux
RUN chmod +x /root/packer-builder-vsphere-iso.linux

WORKDIR /root
