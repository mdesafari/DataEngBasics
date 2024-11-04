-- select our db
USE country_db;

-- load data from a csv file
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data/ProjectMySQL/currencies.csv'
INTO TABLE currencies
FIELDS TERMINATED BY ',' -- separator
LINES TERMINATED BY '\n' -- breaking line
IGNORE 1 ROWS -- header
(`currency_id`, `currency_name`, `currency_code`);

