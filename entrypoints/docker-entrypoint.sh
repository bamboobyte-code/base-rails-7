#!/bin/sh
# tail -f Gemfile
bundle check || bundle install

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi
# create db if not exist
bundle exec rails db:create

# migration
bundle exec rails db:migrate

bundle exec rails s -p 3000 -b 0.0.0.0
