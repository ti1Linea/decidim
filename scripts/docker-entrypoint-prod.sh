#!/bin/sh
set -e

# migración de cambios a la base de datos si existieran
bundle exec rake db:migrate


exec "$@"
