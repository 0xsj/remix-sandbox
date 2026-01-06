#!/bin/bash
set -e

# This script creates multiple databases in a single Postgres instance.
# It runs automatically on first container startup via docker-entrypoint-initdb.d

function create_database() {
  local database=$1
  echo "Creating database '$database'..."
  psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    SELECT 'CREATE DATABASE $database'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = '$database')\gexec
    GRANT ALL PRIVILEGES ON DATABASE $database TO $POSTGRES_USER;
EOSQL
  echo "Database '$database' created."
}

# Parse comma-separated list of databases
if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
  echo "Multiple databases requested: $POSTGRES_MULTIPLE_DATABASES"
  for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
    create_database $db
  done
  echo "All databases created."
fi