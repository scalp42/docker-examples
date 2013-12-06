#!/usr/bin/env bash
#===============================================================================
#
#    AUTHOR: Alen Komljen <alen.komljen@live.com>
#
#===============================================================================
cd $APP_ROOT
sed -e '0,/host: '"'"'127.0.0.1'"'"'/s//host: '"'"'0.0.0.0'"'"'/'              \
config.example.js > config.js
#-------------------------------------------------------------------------------
npm config set strict-ssl false
npm config set registry "http://registry.npmjs.org/"
#-------------------------------------------------------------------------------
echo "Starting ghost:"
npm start
#===============================================================================