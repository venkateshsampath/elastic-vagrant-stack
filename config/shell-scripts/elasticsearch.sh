#!/bin/bash

yum install -y elasticsearch
      
mv "/etc/elasticsearch/elasticsearch.yml"  "/etc/elasticsearch/elasticsearch.yml.original"
cp "/home/vagrant/elasticsearch.yml" "/etc/elasticsearch/elasticsearch.yml"
      
systemctl daemon-reload
systemctl enable elasticsearch.service
systemctl start elasticsearch.service
