andrewrothstein.kafka
=====================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-kafka.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-kafka)

Installs [Kafka](https://kafka.apache.org/) and its binary dependencies

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kafka
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
