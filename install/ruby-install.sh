#!/bin/bash
## ruby-install.sh
## Mac Radigan

curl -sSL https://get.rvm.io | bash -s stable --ruby

#rvm pkg install openssl
rvm install 2.0.0
rvm use 2.0.0

gem install nokogiri
gem install gollum
gem install bundler
gem install rails
gem install sinatra
gem install ffi -v 1.9.13

## *EOF*
