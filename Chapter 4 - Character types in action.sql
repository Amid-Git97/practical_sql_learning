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


-- Listing 4-3: Rounding issues with float columns
-- Assumes table created and loaded with Listing 4-2

SELECT
    numeric_column * 10000000 AS fixed,
    real_column * 10000000 AS floating
FROM number_data_types
WHERE numeric_column = .7;

-- Listing 4-4: The timestamp and interval types in action

CREATE TABLE date_time_types (
    timestamp_column timestamp with time zone,
    interval_column interval
);

INSERT INTO date_time_types
VALUES
    ('2022-12-31 01:00 EST','2 days'),
    ('2022-12-31 01:00 -8','1 month'),
    ('2022-12-31 01:00 Australia/Melbourne','1 century'),

    -- Using Interval Data Types in Calculations
    
    SELECT 
	timestamp_column,
	interval_column,
	timestamp_column - interval_column AS new_date
FROM date_time_types;

-- Transforming values from one data type to another with CAST

SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

SELECT numeric_column,
       CAST(numeric_column AS integer),
       CAST(numeric_column AS text)
FROM number_data_types;

-- Does not work:
SELECT CAST(char_column AS integer) FROM char_data_types;

-- Alternate notation for CAST is the double-colon:
SELECT timestamp_column::varchar(10)
FROM date_time_types;