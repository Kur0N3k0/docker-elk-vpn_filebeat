apt-get update
apt-get install -y docker.io python3-pip python-pip python-dev
pip install docker-compose
dpkg -i filebeat/filebeat-7.4.2-amd64.deb

cp filebeat.yml /etc/filebeat/filebeat.yml
docker-compose build
docker-compose -d up

service filebeat restart
