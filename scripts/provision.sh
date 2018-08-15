#!/usr/bin/env bash

# check pika
[ -d /usr/share/doc/python-pika ] || {
  apt-get update
  apt-get install -y python-pika
}

# check rabbitmq
systemctl is-active --quiet rabbitmq-server || {
  apt-get update
  apt-get install -y rabbitmq-server
}
