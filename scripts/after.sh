#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.


# Setting Up MongoDB
# https://github.com/zakhttp/Mongostead7
sudo curl -sS https://raw.githubusercontent.com/zakhttp/Mongostead7/master/mongoHomestead7.sh | sudo sh

echo "Remove IP restriction for MongoDB"
sudo sed -i '/127.0.0.1/s/^/#/g' /etc/mongod.conf

echo "Add mongodb.service"
cat >/etc/systemd/system/mongodb.service <<EOL
[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
EOL

cat /etc/systemd/system/mongodb.service

sudo systemctl start mongodb
sudo systemctl status mongodb
sudo systemctl enable mongodb

#echo "Remove IP restriction for MongoDB"
sudo sed -i '/127.0.0.1/s/^/#/g' /etc/mongod.conf
