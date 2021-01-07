#!/usr/bin/env sh

export APP_NAME=my-app

# cp src-edited/config/entrypoint.js ${APP_NAME}/config/
cp src-edited/App.js ${APP_NAME}/
cp src-edited/Router.js ${APP_NAME}/
# cp src-edited/babel.config.js ${APP_NAME}/