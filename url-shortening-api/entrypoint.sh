#!/bin/bash

# See: https://docs.docker.com/samples/rails/
rm -f /myapp/tmp/pids/server.pid

# Note: The binstubs will be overwritten, so we are taking temporary measures.
bundle config --delete bin

npm ci
bundle install
rails db:create
rails db:migrate
rails server --binding=0.0.0.0 --port=3000

exec "$@"
