--View all countries
SELECT *  
FROM World_combined_30; 

--View all cities in one country code - ANT
SELECT * 
FROM world_combined_30 
WHERE country_code = 'ANT'; 

--Show all rows for one country (e.g. Afghanistan)
SELECT * 
FROM world_combined_30 
WHERE country_name = 'Afghanistan'; 

--List languages and whether they are official for Aruba 
SELECT language, 
       is_official, 
       language_percentage 
FROM world_combined_30 
WHERE country_name = 'Aruba'; 

--Show all cities and their country codes 
SELECT city_name, 
       country_code 
FROM world_combined_30; 

--Find all official languages in the table 
SELECT country_name, 
       language, 
       language_percentage 
FROM world_combined_30 
WHERE is_official = TRUE; 

--Get countries with population over 10 million 
SELECT DISTINCT country_name, 
       country_population 
FROM world_combined_30 
WHERE country_population > 10000000; 

--Show languages with more than 40% of the population 
SELECT country_name, 
       language, 
       language_percentage 
FROM world_combined_30 
WHERE language_percentage > 40.0; 