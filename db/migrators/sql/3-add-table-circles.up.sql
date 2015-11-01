CREATE TABLE circles(
    id bigserial NOT NULL PRIMARY KEY,
    name varchar NOT NULL,
    created_by_person_id bigint,
    visibility varchar NOT NULL,
    admission_type varchar NOT NULL,
    withdrawal_type varchar NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone
)
--;;
CREATE INDEX ON circles (created_by_person_id);
--;;
CREATE INDEX ON circles (visibility, created_at);
