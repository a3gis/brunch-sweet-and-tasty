#!/usr/bin/env watchr

# config file for watchr http://github.com/mynyml/watchr
# install: gem install watchr
# run: watch watchr.rb
# note: make sure that you have jstd server running (server.sh) and a browser captured

`cd ..`
watch( '(public/javascripts|test/unit)' )  do
  puts `scripts/test.sh`
end

