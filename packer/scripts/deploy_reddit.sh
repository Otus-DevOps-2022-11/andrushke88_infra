#!/bin/bash
sleep 20
systemctl link /tmp/puma.service
apt-get --assume-yes update
apt-get --assume-yes install git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
systemctl daemon-reload
systemctl enable puma.service
systemctl start puma.service
