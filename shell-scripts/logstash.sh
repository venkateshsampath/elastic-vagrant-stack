#!/bin/bash

sudo yum install -y logstash

sudo cp "/home/vagrant/logstash-pipeline.conf" "/etc/logstash/conf.d/"

sudo sed -i 's/^\-Xms1g/\-Xms512m/' /etc/logstash/jvm.options
sudo sed -i 's/^\-Xmx1g/\-Xmx512m/' /etc/logstash/jvm.options

sudo systemctl daemon-reload
sudo systemctl enable logstash.service
sudo systemctl start logstash.service
systemctl status logstash.service
