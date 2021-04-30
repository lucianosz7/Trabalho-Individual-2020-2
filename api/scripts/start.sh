#!/bin/sh
set -e

python ./manage.py migrate

if [ -n $API_ENV ]
then
  if [ "$API_ENV" = "development" ]
  then
    python ./manage.py runserver 0.0.0.0:8000
  elif [ "$API_ENV" = "test" ]
  then
    python ./manage.py test
  elif [ "$API_ENV" = "style" ]
  then
    flake8 --exclude ./task/migrations/*
  else
    echo "Unknown API_ENV value..."
  fi
fi

