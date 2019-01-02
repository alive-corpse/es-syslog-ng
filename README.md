# ES-Syslog-NG

It's container with syslog-ng and some custom configs.

### Requirements
* docker
* docker-compose
* straight hands

### How to install

```sh
git clone https://github.com/alive-corpse/es-syslog-ng.git
cd es-syslog-ng
echo "HOSTUID=$(id -u)" > .env
echo "HOSTGID=$(id -g)" >> .env
docker-compose up
```

### How to setup
* You can check some examples in directory configs/conf.d with postfix *.conf_example and make new custom *.conf files.
* You can check offitial documentation [here](https://www.syslog-ng.com/technical-documents/doc/syslog-ng-open-source-edition/3.19/administration-guide).
* After editing config files inside configs directory, you should reload syslog-ng by executing scripts/reload (it also can be runned from container as from host).

### What ports are listened?
* UDP 514
* TCP 601

### Where can I get my log files?
In the logs directory obliviously. Also you should use /logs path in your config files.

### I have some questions
Youre welcome to evgeniy.shumilov@gmail.com
