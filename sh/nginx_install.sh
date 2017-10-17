# add-apt-repository: command not found
# apt-get install software-properties-common

sudo add-apt-repository ppa:nginx/stable

sudo apt-get -qq update

sudo apt-get install -y nginx
