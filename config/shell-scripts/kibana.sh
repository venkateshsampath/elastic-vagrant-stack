#!/bin/bash

yum install -y kibana
      
mv "/etc/kibana/kibana.yml" "/etc/kibana/kibana.original"
cp "/home/vagrant/kibana.yml" "/etc/kibana/kibana.yml"

systemctl daemon-reload
systemctl enable kibana.service
systemctl start kibana.service
