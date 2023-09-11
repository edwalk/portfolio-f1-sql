-- How many drivers have participated in each season since 1950?
SELECT races.year, COUNT(DISTINCT r.driverid) FROM results AS r LEFT JOIN races ON r.raceid = races.raceid GROUP BY races.year ORDER BY races.year;

-- List participating for any given year (example below is 1952)
SELECT r.driverid, d.forename, d.surname, COUNT(r.driverid) AS races
FROM results AS r
LEFT JOIN drivers AS d ON r.driverid = d.driverid
LEFT JOIN races AS ra ON r.raceid = ra.raceid
WHERE ra.year = '1952'
GROUP BY r.driverid, d.forename, d.surname
ORDER BY races DESC;

-- Who are the Top 10 Grand Prix winners since 1950?
SELECT d.forename, d.surname, COUNT(r.driverid) AS wins
FROM results AS r
LEFT JOIN drivers AS d ON r.driverid = d.driverid
WHERE r.position = '1'
GROUP BY d.forename, d.surname
ORDER BY wins DESC
LIMIT 10;

-- Who are the Top 10 Grand Prix participants since 1950?
SELECT d.forename, d.surname, COUNT(r.driverid) AS races
FROM results AS r
LEFT JOIN drivers AS d ON r.driverid = d.driverid
GROUP BY d.forename, d.surname
ORDER BY races DESC
LIMIT 10;

-- Which 10 drivers have participated in most Grand Prix races without winning?
WITH races_without_wins AS(
    SELECT r.driverid, COUNT(r.driverid) AS races_without_wins
FROM results AS r
WHERE r.positiontext != '1'
GROUP BY r.driverid
ORDER BY races_without_wins DESC
)

SELECT d.forename, d.surname, wc.races_without_wins, COUNT(r.driverid) AS races
FROM results AS r
LEFT JOIN drivers AS d ON r.driverid = d.driverid
INNER JOIN races_without_wins AS wc ON r.driverid = wc.driverid
GROUP BY d.forename, d.surname, wc.races_without_wins
HAVING COUNT(r.driverid) = wc.races_without_wins
ORDER BY races DESC
LIMIT 10;


-- Who are the Top 10 Grand Prix drivers with the best win ratio?
WITH races_without_wins AS(
    SELECT r.driverid, COUNT(r.driverid) AS races_without_wins
FROM results AS r
WHERE r.positiontext != '1'
GROUP BY r.driverid
ORDER BY races_without_wins DESC
), 

race_wins AS(
    SELECT r.driverid, COUNT(r.driverid) AS race_wins
    FROM results AS r
    WHERE r.positiontext = '1'
    GROUP BY r.driverid
    ORDER BY race_wins DESC
)

SELECT d.forename, d.surname, ROUND(COALESCE((rw.race_wins::decimal / NULLIF(rww.races_without_wins + rw.race_wins, 0)), 0), 2) AS win_ratio, (rw.race_wins + rww.races_without_wins) AS race_count, rw.race_wins AS race_wins
FROM drivers AS d
LEFT JOIN races_without_wins AS rww ON rww.driverid = d.driverid
LEFT JOIN race_wins AS rw ON rw.driverid = d.driverid
GROUP BY d.forename, d.surname, win_ratio, race_count, race_wins
ORDER BY win_ratio DESC
LIMIT 10;
