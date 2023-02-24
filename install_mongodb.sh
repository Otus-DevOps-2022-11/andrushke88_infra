#!/bin/bash
apt-get update
sleep 30
apt-get install apt-transport-https ca-certificates dpkg
wget -qO - "https://www.mongodb.org/static/pgp/server-4.2.asc" | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update
sleep 30;
apt-get install -y mongodb-org
sleep 30
wget https://repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/4.2/multiverse/binary-amd64/mongodb-org_4.2.12_amd64.deb
dpkg -i mongodb-org_4.2.12_amd64.deb
systemctl status mongod
systemctl enable mongod
systemctl status mongod
systemctl start mongod
