#!/bin/bash

sudo yum install -y kibana
      
sudo mv "/etc/kibana/kibana.yml" "/etc/kibana/kibana.original"
sudo cp "/home/vagrant/kibana.yml" "/etc/kibana/kibana.yml"

sudo systemctl daemon-reload && \
sudo systemctl enable kibana.service && \
sudo systemctl start kibana.service && \
sudo systemctl status kibana.service