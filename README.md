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
docker-compose up -d
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

### Log compressing and cleaning
Also logs can be compressed and cleaned by included scripts, that handle this processes every 2 hours. You should just place file with name '.clean' and content like this:
```archive=7
clean=30```
into one of subdirectories of logs directory and all of log files in this directory and it's subdirectories will be deleted if them older than 30 days and compressed with bzip2 if them are older than 7 days. Be carefull with it - all the .clean files will be handled in order of they will be found.

### I have some questions
Youre welcome to evgeniy.shumilov@gmail.com
