#! /bin/bash

sudo apt-get update -y
sudo apt-get install -y git
git clone -b master https://github.com/feenord/search_engine_crawler.git
cd search_engine_crawler
sudo apt-get install python -y
sudo apt-get -y install python3-pip 
sudo pip3 install -r requirements.txt
sudo apt-get install rabbitmq-server -y
systemctl enable rabbitmq-server
systemctl start rabbitmq-server
systemctl status rabbitmq-server
sudo apt-get install mc -y
cp ./scripts/crawler.service /etc/systemd/system/
systemctl enable crawler.service
systemctl start crawler.service
systemctl status crawler.service 
