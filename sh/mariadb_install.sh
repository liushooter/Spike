sudo apt-get install -qqy software-properties-common

sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db

sudo add-apt-repository 'deb http://mirrors.hustunique.com/mariadb/repo/10.1/ubuntu trusty main'

sudo apt-get -qq update

sudo apt-get install -y mariadb-server mariadb-client libmariadbclient-dev

# https://linuxize.com/post/how-to-install-mariadb-on-ubuntu-18-04/
