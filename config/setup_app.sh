#!/bin/sh

set -e

bundle check || bundle install --jobs 5 --retry 5

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

echo ' --> Creating databases '

until pg_isready -h db -p 5432 -U postgres; do
  echo "Waiting for PostgreSQL to be ready..."
  sleep 2
done

rails db:create
echo ' --> Databases created '

echo ' --> Running migrations '
rails db:migrate
echo ' --> End of migrations '

echo ' --> Seeding the database '
rails db:seed
echo ' --> Database seeding completed '

exec "$@"
