#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE TABLE did (
    id          integer,
    name        varchar(255),
    CONSTRAINT pk_id PRIMARY KEY(id)
);

INSERT INTO did VALUES (1, 'Main');

EOSQL