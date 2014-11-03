cd ~

sudo apt-get update && sudo apt-get install openjdk-7-jre-headless -y

wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

sudo sh -c "echo 'deb http://packages.elasticsearch.org/elasticsearch/1.3/debian stable main' >> /etc/apt/sources.list"

sudo apt-get update && sudo apt-get install elasticsearch

# http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html
# http://stackoverflow.com/questions/1584066/append-to-etc-apt-sources-list