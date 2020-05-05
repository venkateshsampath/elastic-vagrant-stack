#!/bin/bash

yum install -y filebeat

mv "/etc/filebeat/filebeat.yml" "/etc/filebeat/filebeat.original"
cp "/home/vagrant/filebeat.yml" "/etc/filebeat/filebeat.yml"

systemctl daemon-reload
systemctl enable filebeat.service

systemctl start filebeat.service