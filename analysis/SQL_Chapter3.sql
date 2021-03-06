CREATE TABLE number_data_types (
numeric_column numeric(20,5),
	real_column real,
	double_column double precision
);

INSERT INTO number_data_types
VALUES
	(.7, .7, .7),
	(2.13579, 2.46548, 2.474559),
	(2.48789856658, 2.484854526842, 2.145878451511);
	
SELECT * FROM number_data_types;

SELECT
	numeric_column * 1000000 AS "Fixed",
	real_column * 1000000 AS "Float"
FROM number_data_types
WHERE numeric_column = .7;

SELECT
	now(),
	now() - INTERVAL '20 minutes'
		AS "3 hours 20 minutes ago of last year";
		
CREATE TABLE date_time_types (
timestamp_column timestamp with time zone,
interval_column interval
);

INSERT INTO date_time_types
VALUES
	('2018-12-31 01:00 EST','2 days'),
	('2018-12-31 01:00 -8','1 month'),
	('2018-12-31 01:00 Australia/Melbourne','1 century'),
	(now(),'1 week');
SELECT * FROM date_time_types;

INSERT INTO date_time_types
VALUES
	('2018-12-31 01:00 EST','2 days'),
	('2018-12-31 01:00 -8','1 month'),
	('2018-12-31 01:00 Australia/Melbourne','1 century'),
	(now(),'1 week');
SELECT * FROM date_time_types;

SELECT
	timestamp_column,
	interval_column,
	timestamp_column - interval_column AS new_date
FROM date_time_types;

SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

SELECT numeric_column,
	CAST(numeric_column AS integer),
	CAST(numeric_column AS varchar(6))
FROM number_data_types;
	
SELECT CAST(char_column AS integer) FROM char_data_types;