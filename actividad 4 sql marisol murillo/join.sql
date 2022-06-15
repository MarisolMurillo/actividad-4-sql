SELECT cities.name, continents.name, countries.name
FROM cities, city_country_continent, continents, countries
WHERE city_country_continent.country_id = countries.id
AND city_country_continent.city_id = cities.id
AND city_country_continent.continent_id = continents.id