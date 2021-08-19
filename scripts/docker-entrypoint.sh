#!/bin/sh
set -e

#creación base de datos y tablas
bundle exec rake db:migrate:reset

#poblado de tablas con información del sistema
bundle exec rake db:seed

exec "$@"
