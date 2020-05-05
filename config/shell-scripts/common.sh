#!/bin/bash

yum install -y telnet nano emacs java-1.8.0-openjdk-devel

cp "/home/vagrant/elastic.repo" "/etc/yum.repos.d/"
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
