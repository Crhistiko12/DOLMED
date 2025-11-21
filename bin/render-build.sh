#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Build CSS first
bundle exec rails css:build
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
