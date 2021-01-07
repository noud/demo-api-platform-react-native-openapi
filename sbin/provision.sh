#!/usr/bin/env sh

APP_NAME=my-app
# sbin/app-name.sh

sudo rm -r ${APP_NAME}
rm -r node_modules package-lock.json yarn.lock

yarn install
# yarn upgrade
node_modules/.bin/expo init ${APP_NAME}

cd ${APP_NAME}
yarn add redux react-redux redux-thunk redux-form react-router-dom connected-react-router prop-types
yarn add --dev @api-platform/client-generator
yarn add react-native-elements@0.19.0 react-native-router-flux react-native-vector-icons whatwg-url buffer react-native-event-source react-native-gesture-handler react-native-reanimated react-native-screens

cd .. && sbin/generate.sh
cd ${APP_NAME}
../node_modules/.bin/expo start