#!/usr/bin/env sh

APP_NAME=my-app

cd ${APP_NAME}

node_modules/.bin/generate-api-platform-client https://demo.api-platform.com . --generator react-native --format openapi --resource book
# node_modules/.bin/generate-api-platform-client http://localhost:8080/docs.json . --generator react-native --format openapi --resource book
# node_modules/.bin/generate-api-platform-client http://api-platform-demo.localhost . --generator react-native --format openapi --resource book

cd .. && sbin/edited.sh