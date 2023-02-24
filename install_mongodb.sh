#!/bin/bash
wget -qO - "https://www.mongodb.org/static/pgp/server-4.2.asc" | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-get install -y mongodb-org
sleep 30
ps --no-headers -o comm 1
sudo systemctl daemon-reload

systemctl start mongod
sudo systemctl daemon-reload

systemctl enable mongod
