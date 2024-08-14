#!/bin/bash
set -e;


if [ -n "${DB_NON_ROOT_USER:-}" ] && [ -n "${DB_NON_ROOT_PASSWORD:-}" ]; then
	psql -v ON_ERROR_STOP=1 --username "$DB_USER" --dbname "$DB_DB" <<-EOSQL
		CREATE USER ${DB_NON_ROOT_USER} WITH PASSWORD '${DB_NON_ROOT_PASSWORD}';
		GRANT ALL PRIVILEGES ON DATABASE ${DB_DB} TO ${DB_NON_ROOT_USER};
		GRANT CREATE ON SCHEMA public TO ${DB_NON_ROOT_USER};
	EOSQL
else
	echo "SETUP INFO: No Environment variables given!"
fi