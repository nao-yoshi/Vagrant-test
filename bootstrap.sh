#!/bin/bash

## Set timezone
sudo cp /usr/share/zoneinfo/Japan /etc/localtime
echo "========================================="
echo "set timezone as JST"
echo "========================================="

## Disable firewalld
echo "========================================="
echo "Disable firewall"
echo "========================================="
sudo systemctl stop firewalld
sudo systemctl disable firewalld

## Install nginx
echo "========================================="
echo "Start Installation nginx ........."
echo "========================================="
tee /etc/yum.repos.d/nginx.repo <<-'EOF'
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/mainline/centos/7/$basearch/
gpgcheck=0
enabled=1
EOF
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "========================================="
