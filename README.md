andrewrothstein.kafka
=====================
![Build Status](https://github.com/andrewrothstein/ansible-kafka/actions/workflows/build.yml/badge.svg)

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
