CREATE TABLE persons(
    id bigserial NOT NULL PRIMARY KEY,
    username varchar NOT NULL,
    password varchar NOT NULL,
    name varchar,
    email varchar,
    invited_by_person bigint
)
