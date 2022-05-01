#! /bin/bash
#sudo apt-get install wget -y
#wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
#echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get update -y
sudo apt install mongodb-server -y
git clone -b master https://github.com/feenord/search_engine_crawler.git
cd ./seacrh_engine_crawler/
cp ./scripts/mongodb.conf /etc/
sudo systemctl start mongodb
sudo systemctl enable mongodb
sudo systemctl status mongodb
