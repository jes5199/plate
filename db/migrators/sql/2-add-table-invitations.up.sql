CREATE TABLE invitations(
    id bigserial NOT NULL PRIMARY KEY,
    code varchar NOT NULL,
    type varchar NOT NULL,
    created_by_person bigint,
    used_by_person bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
)
