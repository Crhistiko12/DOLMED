#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Ruby dependencies
bundle install

# Install Node.js dependencies
yarn install

# Build CSS with Bootstrap (production mode, compressed)
yarn build:css:production

# Precompile assets
bundle exec rails assets:precompile

# Clean old assets
bundle exec rails assets:clean

# Run database migrations
bundle exec rails db:migrate