INSERT INTO char_data_types
VALUES
    ('abc', 'abc', 'abc'),
    ('defghi', 'defghi', 'defghi');

-- Creating a table using 2 different auto-incrementing integers

-- Auto-incrementing with SERIAL
CREATE TABLE people(
id serial,
person_name varchar(100)
);

-- Auto incrementing with IDENTITY
 CREATE TABLE people (
id integer GENERATED ALWAYS AS IDENTITY, 
person_name varchar(100)
);