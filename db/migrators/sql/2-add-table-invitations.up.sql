CREATE TABLE invitations(
    id bigserial NOT NULL PRIMARY KEY,
    code varchar NOT NULL,
    type varchar NOT NULL,
    created_by_person_id bigint,
    used_by_person_id bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
);
--;;
CREATE UNIQUE INDEX ON invitations (code);
--;;
CREATE INDEX ON invitations (created_by_person_id, used_by_person_id);
--;;
CREATE INDEX ON invitations (used_by_person_id, created_by_person_id);
