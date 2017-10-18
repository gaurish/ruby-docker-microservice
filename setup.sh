#!/bin/sh
export APP_ENV=production

apk update
apk upgrade
apk -U add alpine-sdk openssl-dev ruby-dev ruby ruby-io-console
echo 'gem: --no-document' > ~/.gemrc
gem install bundler
bundle install --clean --jobs=4