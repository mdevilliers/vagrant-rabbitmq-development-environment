vagrant-rabbitmq-development-environment
========================================

Simple vagrant script for creating a development environment for rabbitmq plugin development.

Checks out the source code to /vagrant.

Uses the ubuntu/trusty64 box (which you may already have)

To use
------

```
vagrant up
```

Notes
-----

erl_call not found

The sym link in /usr/bin is broken in erlang 17 however erl_call is found in /usr/lib/erlang/lib/erl_interface-{some version}/bin/erl_call 


```
rm /usr/bin/erl_call
ln -s //usr/lib/erlang/lib/erl_interface-{some version}/bin/erl_call  /usr/bin/erl_call
```