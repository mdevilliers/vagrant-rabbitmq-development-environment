vagrant-rabbitmq-development-environment
========================================

Simple vagrant script for creating a development environment for rabbitmq plugin development.

Checks out the source code to /vagrant.

Uses the hashicorp/precise32 box (which you may already have)

To use
------


vagrant up

vagrant halt

vagrant up --no-provision

Notes
-----

erl_call not found

The sym link in /usr/bin is broken in erlang 17 however erl_call is found in /usr/lib/erlang/lib/erl_interface-3.7.19/bin/erl_call 