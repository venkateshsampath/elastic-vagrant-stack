#!/bin/bash

sudo yum -y install java-1.8.0-openjdk

cat <<EOF | sudo tee /etc/profile.d/java8.sh
export JAVA_HOME=/usr/lib/jvm/jre-openjdk
export PATH=\$PATH:\$JAVA_HOME/bin
export CLASSPATH=.:\$JAVA_HOME/jre/lib:\$JAVA_HOME/lib:\$JAVA_HOME/lib/tools.jar
EOF

source /etc/profile.d/java8.sh

sudo yum install -y logstash

sudo cp "/home/vagrant/logstash-pipeline.conf" "/etc/logstash/conf.d/"

sudo sed -i 's/^\-Xms1g/\-Xms512m/' /etc/logstash/jvm.options
sudo sed -i 's/^\-Xmx1g/\-Xmx512m/' /etc/logstash/jvm.options

sudo systemctl daemon-reload
sudo systemctl enable logstash.service
sudo systemctl start logstash.service
systemctl status logstash.service
