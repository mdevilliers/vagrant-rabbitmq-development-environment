#!/bin/bash
export DEBIAN_FRONTEND=noninteractive 

wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb

apt-get update > /dev/null

apt-get -y install make mercurial zip xsltproc esl-erlang git

cat >/etc/mercurial/hgrc <<-EOF
		[trusted]
		users = vagrant
	EOF

cd /vagrant

hg clone http://hg.rabbitmq.com/rabbitmq-public-umbrella

cd rabbitmq-public-umbrella

make co

