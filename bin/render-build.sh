#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Build CSS for production (minified, no watch mode)
npm run build:css:production
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
