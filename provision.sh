#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb

apt-get update > /dev/null

apt-get -y install make zip xsltproc esl-erlang git


cd /vagrant

git clone https://github.com/rabbitmq/rabbitmq-public-umbrella.git

cd rabbitmq-public-umbrella

make co

