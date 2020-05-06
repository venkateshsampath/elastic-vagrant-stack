#!/bin/bash

sudo yum install -y elasticsearch

sudo mv "/etc/elasticsearch/elasticsearch.yml"  "/etc/elasticsearch/elasticsearch.yml.original"
sudo cp "/home/vagrant/elasticsearch.yml" "/etc/elasticsearch/elasticsearch.yml"

sudo sed -i 's/^\-Xms1g/\-Xms512m/' /etc/elasticsearch/jvm.options
sudo sed -i 's/^\-Xmx1g/\-Xmx512m/' /etc/elasticsearch/jvm.options

sudo systemctl daemon-reload && \
sudo systemctl enable elasticsearch.service && \
sudo systemctl start elasticsearch.service && \
curl -s localhost:9200/_cat/nodes?v && \
echo "esdata02 setup Completed!"
