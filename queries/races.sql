-- How many races have taken place in each country throughout F1's history?
SELECT c.country AS country, COUNT(r.circuitid) AS race_count
FROM races AS r
INNER JOIN circuits AS c ON r.circuitid = c.circuitid
GROUP BY c.country
ORDER BY race_count DESC;

-- What are the 10 most visited tracks in Grand Prix history?
SELECT c.name AS circuit, COUNT(r.circuitid) AS race_count
FROM races AS r
INNER JOIN circuits AS c ON r.circuitid = c.circuitid
GROUP BY c.name
ORDER BY race_count DESC
LIMIT 10;

--Which decade has the most Grand Prix races per season on average?
SELECT CONCAT(LEFT(CAST(r.year AS CHAR(4)), 3), '0s') AS decade,
        ROUND(AVG(race_count), 2) AS average_race_count
FROM (
    SELECT YEAR AS year, COUNT(*) AS race_count
    FROM races
    GROUP BY YEAR
) AS r
GROUP BY decade
ORDER BY decade;
