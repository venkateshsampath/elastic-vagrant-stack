#!/bin/bash

sudo yum install -y filebeat

sudo cp "/home/vagrant/filebeat.yml" "/etc/filebeat/"

sudo systemctl daemon-reload
sudo systemctl enable filebeat.service
sudo systemctl start filebeat.service
systemctl status filebeat.service
