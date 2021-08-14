#!/bin/bash

bundle install
rails db:create
rails db:migrate
rails server --binding=0.0.0.0 --port=3000

exec "$@"
