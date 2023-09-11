-- 10 most common causes of retirements ever

SELECT s.status, COUNT(status) AS count
FROM results AS r 
INNER JOIN status AS s ON r.statusId = s.statusid
WHERE status != 'Finished' AND status NOT LIKE '%Lap%' AND status NOT LIKE '%qualify%' AND status NOT LIKE '%Withdrew%'
GROUP BY s.status
ORDER BY count DESC;

-- Number of retirements per decade relative to number of drivers participating.

WITH retirement_count AS(
    SELECT r.resultid, COUNT(resultid) AS count
    FROM results AS r
    INNER JOIN status AS s ON r.statusid = s.statusid
    WHERE status != 'Finished' AND status NOT LIKE '%Lap%' AND status NOT LIKE '%qualify%' AND status NOT LIKE '%Withdrew%' AND status NOT LIKE '%NotClassified%'
    GROUP BY r.resultid
)

SELECT CONCAT(LEFT(CAST(r.year AS CHAR(4)), 3), '0s') AS decade, COUNT(res.driverid) AS race_participations, SUM(rc.count) AS retirements, ROUND((SUM(rc.count)::decimal / COUNT(res.driverid)::decimal) * 100, 2) AS percentage
FROM results AS res
INNER JOIN races AS r ON res.raceid = r.raceid
INNER JOIN status AS s ON res.statusid = s.statusid
LEFT JOIN retirement_count AS rc ON res.resultid = rc.resultid
GROUP BY decade
ORDER BY decade ASC;

-- Which constructor has the most retirements relative to race participations?
WITH retirement_count AS(
    SELECT r.resultid, COUNT(resultid) AS count
    FROM results AS r
    INNER JOIN status AS s ON r.statusid = s.statusid
    WHERE status != 'Finished' AND status NOT LIKE '%Lap%' AND status NOT LIKE '%qualify%' AND status NOT LIKE '%Withdrew%' AND status NOT LIKE '%NotClassified%'
    GROUP BY r.resultid
)

SELECT c.name AS constructor, COALESCE(SUM(rc.count), 0) AS retirements, COUNT(res.constructorid) AS race_participations
FROM results AS res
INNER JOIN status AS s ON res.statusid = s.statusid
INNER JOIN constructors AS c ON res.constructorid = c.constructorid
LEFT JOIN retirement_count AS rc ON res.resultid = rc.resultid
GROUP BY constructor
ORDER BY retirements DESC
LIMIT 10;

-- Which driver has the most retirements relative to race participations?
WITH retirement_count AS(
    SELECT r.resultid, COUNT(resultid) AS count
    FROM results AS r
    INNER JOIN status AS s ON r.statusid = s.statusid
    WHERE status != 'Finished' AND status NOT LIKE '%Lap%' AND status NOT LIKE '%qualify%' AND status NOT LIKE '%Withdrew%' AND status NOT LIKE '%NotClassified%'
    GROUP BY r.resultid
)

SELECT d.forename AS first_name, d.surname AS last_name, COALESCE(SUM(rc.count), 0) AS retirements, COUNT(res.driverid) AS race_participations
FROM results AS res
INNER JOIN status AS s ON res.statusid = s.statusid
INNER JOIN drivers AS d ON res.driverid = d.driverid
LEFT JOIN retirement_count AS rc ON res.resultid = rc.resultid
GROUP BY first_name, last_name
ORDER BY retirements DESC
LIMIT 10;