#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Build CSS for production (minified, no watch mode)
npm run build:css:production
bundle exec rails assets:precompile
bundle exec rails assets:clean
# Prepare database (creates if doesn't exist)
bundle exec rails db:prepare
bundle exec rails db:migrate
