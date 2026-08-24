SELECT DISTINCT country_name 
FROM world_combined_30;

SELECT language, 
       language_percentage 
FROM world_combined_30 
WHERE country_name = 'Angola' 
ORDER BY language_percentage DESC;

SELECT DISTINCT country_name, 
       country_code 
FROM  world_combined_30
WHERE language = 'English';

SELECT language, 
       language_percentage 
FROM world_combined_30 
WHERE country_name = 'Albania' AND is_official = FALSE;

SELECT DISTINCT country_name, 
       country_population 
FROM world_combined_30 
WHERE country_population BETWEEN 100000 AND 3000000 
ORDER BY country_population;

SELECT country_name, 
       COUNT(*) AS language_count 
FROM world_combined_30 
GROUP BY country_name 
ORDER BY language_count DESC; 

SELECT country_name, 
       MAX(language_percentage) AS max_language_percentage 
FROM world_combined_30 
GROUP BY country_name 
ORDER BY max_language_percentage DESC; 

SELECT DISTINCT country_name 
FROM world_combined_30 
WHERE language_percentage > 50;

SELECT country_name, 
       SUM(language_percentage) AS total_official_percentage 
FROM world_combined_30 
WHERE is_official =  TRUE
GROUP BY country_name 
ORDER BY total_official_percentage DESC;

SELECT country_name, 
       COUNT(*) AS official_language_count 
FROM world_combined_30 
WHERE is_official = TRUE 
GROUP BY country_name 
HAVING COUNT(*) > 1
ORDER BY official_language_count DESC;

SELECT country_name, 
       language, 
       language_percentage 
FROM world_combined_30 
WHERE is_official = TRUE AND language_percentage < 10; 

SELECT country_name, 
       country_code, 
       language_percentage 
FROM world_combined_30 
WHERE language = 'Arabic' AND is_official = TRUE;

SELECT country_name, 
       COUNT(*) AS non_official_count 
FROM world_combined_30 
WHERE is_official = FALSE        
GROUP BY country_name 
ORDER BY non_official_count DESC; 

SELECT * 
FROM world_combined_30 
WHERE city_name LIKE '%la%'; 

SELECT country_name 
FROM world_combined_30 
WHERE language_percentage = ( 
    SELECT MAX(w2.language_percentage) 
    FROM world_combined_30 AS w2 
    WHERE w2.country_name = world_combined_30.country_name 
) 
AND is_official = FALSE;

SELECT DISTINCT country_name, 
       country_population 
FROM world_combined_30 
WHERE country_population > 
      ( 
        SELECT AVG(country_population) 
        FROM world_combined_30 
      ); 

SELECT DISTINCT language, 
       country_name, 
       language_percentage 
FROM world_combined_30 
WHERE is_official = TRUE AND language_percentage >= 40
ORDER BY language;

SELECT country_name, 
       SUM(language_percentage) AS total_language_share 
FROM world_combined_30 
GROUP BY country_name 
HAVING SUM(language_percentage) < 100
ORDER BY total_language_share;

SELECT * 
FROM world_combined_30 AS w 
WHERE country_name IN ( 
    SELECT country_name 
    FROM world_combined_30 
    GROUP BY country_name 
    HAVING COUNT(*) > 5
); 
