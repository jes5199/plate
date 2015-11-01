CREATE TABLE circle_memberships(
    id bigserial NOT NULL PRIMARY KEY,
    circle_id bigint NOT NULL,
    person_id bigint NOT NULL,
    role varchar NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
)
--;;
CREATE INDEX ON circle_memberships (circle_id, person_id, deleted_at);
--;;
CREATE INDEX ON circle_memberships (person_id, circle_id, deleted_at);
