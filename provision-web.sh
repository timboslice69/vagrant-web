#!/bin/bash

echo "******************************"
echo "Provisioning Web..."
echo "******************************"

echo "*** Install Curl & build-essentials"
sudo apt-get install -y curl
sudo apt-get install -y build-essentials

echo "*** Install node and npm"
curl --silent --location https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

echo "*** Run npm install"
cd /srv
sudo npm install

echo "******************************"
echo " Start Server"
echo "******************************"
cd /srv
node server.js

echo "******************************"
echo "Provisioning Web  ...Success! "
echo "******************************"