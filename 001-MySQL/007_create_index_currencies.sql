-- select our db
USE country_db;

-- create a multiple index using both curreency_name and currency_code
CREATE INDEX idx_currency
ON currencies(currency_name, currency_code);
