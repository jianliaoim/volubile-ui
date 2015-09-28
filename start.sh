#!/bin/bash

./node_modules/coffee-script/bin/coffee port.coffee

PORT=$(cat .port | grep '\d')
./node_modules/gulp/bin/gulp.js html
./node_modules/webpack-dev-server/bin/webpack-dev-server.js --compress --hot --port $PORT --progress
