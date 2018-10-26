FROM ubuntu:18.04

add-apt-repository universe
apt-get update
apt-get --assume-yes install software-properties-common
apt-get update

apt-add-repository ppa:ansible/ansible
apt-get --assume-yes install ansible packer
