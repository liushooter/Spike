sudo apt-get -qq update && sudo apt-get install -qqy libpq-dev postgresql

# sudo -u postgres createuser --superuser <username> #创建用户

# production:
#   adapter: postgresql
#   encoding: utf-8
#   database: <database>
#   username: <username>
#   password: ''
#   pool: 5