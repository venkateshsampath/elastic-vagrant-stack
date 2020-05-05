#!/bin/bash

yum install -y logstash

cp "/home/vagrant/pipeline.conf" "/etc/logstash/conf.d/"

systemctl daemon-reload
systemctl enable logstash.service

systemctl start logstash.service