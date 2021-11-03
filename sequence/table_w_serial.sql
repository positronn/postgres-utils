-- Creating a new table, sequence can be created
-- through the SERIAL pseudo-type
CREATE TABLE table_name(
    id SERIAL;
)

-- this is equivalent to
CREATE SEQUENCE table_name_id_seq;

CREATE TABLE table_name(
    id integer NOT NULL DEFAULT nextval('table_name_id_seq')
);

ALTER SEQUENCE table_name_id_seq
OWNED BY table_name.id;