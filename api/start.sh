#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset
set -o xtrace

python ./api/manage.py migrate
python ./api/manage.py runserver 0.0.0.0:8000