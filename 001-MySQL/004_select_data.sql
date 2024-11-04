-- select our db
USE country_db;

-- select city = 'Blainville'
SELECT city_id, city_name, country_id
FROM cities
WHERE city_name LIKE 'Blain%';

/*
List all of the regions and the total number of countries in each region. Order by country count in descending order and capitalize the region name
*/

SELECT
    CONCAT(
        UCASE(SUBSTRING(region, 1, 1)),
        SUBSTRING(region, 2)
    ) AS region,
    COUNT(country_name) AS nb_countries
FROM
    countries
GROUP BY
    region
ORDER BY
    nb_countries DESC;


/*
List all of the sub-regions and the total number of cities in each sub-region. Order by sub-region name alphabetically.
*/

SELECT
    sub_region,
    COUNT(city_id) AS nb_cities
FROM countries AS ct
INNER JOIN cities AS ci
ON ct.country_id = ci.country_id
GROUP BY sub_region
ORDER BY sub_region ASC;

/*
List all of the countries and the total number of cities in the Southern 
Europe sub-region that were inserted in 2021 or more.  
Capitalize the country names and order alphabetically 
by the **LAST** letter of the country name and the number of cities.
*/

SELECT
    CONCAT(
        UCASE(SUBSTRING(country_name, 1, 1)),
        SUBSTRING(country_name, 2)
    ) AS country_name,
    COUNT(city_id) AS nb_cities
FROM countries AS c
INNER JOIN cities AS i
ON c.country_id = i.country_id
WHERE
    c.sub_region = 'southern europe' AND
    EXTRACT(YEAR FROM c.created_on) >= 2021
GROUP BY country_name
ORDER BY SUBSTRING(country_name, -1) ASC, nb_cities ASC;
