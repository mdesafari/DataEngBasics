-- select our db
USE country_db;

-- drop the children tables before the parent ones
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS currencies;

-- drop the db
DROP DATABASE IF EXISTS country_db;
