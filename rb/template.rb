# template.rb
gsub_file 'Gemfile', /^source.*$/, "source 'https://ruby.taobao.org'"

# 删除不用的 Gem
gsub_file "Gemfile", /^gem\s+["']turbolinks["'].*$/,''

# case ask("Choose Database Adapter:", limited_to: %w[mongodb mysql pg])

case ask("Choose Template Engine:", limited_to: %w[erb haml slim])
when "haml"
  gem 'haml-rails'
when "slim"
  gem 'slim-rails'
end

# 安装常用的 Gem

gem_group :development do
  gem 'capistrano'          , require: false
  gem 'capistrano-bundler',   require: false
  gem 'capistrano-rails',     require: false
  gem 'capistrano-rbenv',     require: false
  gem 'capistrano3-puma',     require: false
  gem 'capistrano-sidekiq',   require: false
  gem 'annotate',             require: false
  gem 'better_errors'
  gem 'quiet_assets'
end

gem_group :test do
  gem 'minitest'
  gem 'guard-minitest'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'mocha', require: false
end

gem_group :development, :test do
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'awesome_print'
  gem 'binding_of_caller'
end

gem 'mysql2', '~> 0.3.18'
gem 'puma'
gem 'kaminari'
gem 'colorize'
gem 'carrierwave'

# 修改完 Gemfile 后执行 bundle install
run "bundle install"

#install minitest test_helper
generate('kaminari:config')

#config minitest Spec DSL and Fixtures defaults
environment "config.generators do |g|\n      g.test_framework  :mini_test, spec: true, fixture: true\n      g.view_specs      false\n      g.helper_specs    false\n    end"

run "cp config/database.yml config/database.yml.example"
run "cp config/secrets.yml  config/secrets.yml.example"

# Ignore rails doc files, Vim/Emacs swap files, .DS_Store, and more
# ===================================================
run "cat << EOF >> .gitignore
/.bundle
/db/*.sqlite3
/db/*.sqlite3-journal
/log/*.log
/public/assets/
/tmp
/config/database.yml
/config/secrets.yml
doc/
*.swp
*~
.project
.idea
.secret
.DS_Store
EOF"

run "bundle exec rake db:create"

#Initialize local Git repository and Initial Commit
git :init
# git add: "."
# git commit: "-a -m 'Initial Commit'"