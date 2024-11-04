-- select our db
USE country_db;

-- create a unique index on country_name
CREATE UNIQUE INDEX idx_country_name
ON countries(country_name);

-- create a unqie index on country_code
CREATE UNIQUE INDEX idx_country_code
ON countries(country_code);
