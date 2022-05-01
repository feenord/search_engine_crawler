#! /bin/bash
sudo apt-get update -y
sudo apt install mongodb-server -y
git clone -b master https://github.com/feenord/search_engine_crawler.git
cd ./search_engine_crawler/
cp ./scripts/mongodb.conf /etc/
sudo systemctl start mongodb
sudo systemctl enable mongodb
sudo systemctl status mongodb
