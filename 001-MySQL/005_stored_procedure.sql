-- use our db;
USE country_db;

-- create stored procedure
DROP PROCEDURE IF EXISTS display_table;
CREATE PROCEDURE display_table(IN chosenTable VARCHAR(15))
BEGIN
    -- use a case
    CASE chosenTable
        WHEN 'Countries' THEN
            SELECT country_name, region FROM countries
            ORDER BY country_name ASC;
        
        WHEN 'Cities' THEN
            SELECT city_name, FORMAT(population, 0) FROM cities
            ORDER BY city_name ASC;
        
        WHEN 'Canada' THEN
            SELECT * FROM extract_cities_canada;
        
        ELSE
            SELECT * FROM currencies;
    END CASE;
END;


-- use the stored procedure
CALL display_table('Canada');
