#!/bin/bash
set -e

cd client/
yarn install

if [ -n $CLIENT_ENV ]
then
  if [ "$CLIENT_ENV" = "development" ]
  then
    quasar dev
  elif [ "$CLIENT_ENV" = "test" ]
  then
    yarn test:unit:coverage
  else
    echo "Unknown CLIENT_ENV value..."
  fi
fi
