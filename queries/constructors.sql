--Which 10 constructors have the most race participations?
SELECT c.name AS constructor, COUNT(DISTINCT res.raceid) AS races
FROM results AS res
INNER JOIN constructors AS c ON c.constructorid = res.constructorid
GROUP BY constructor
ORDER BY races DESC
LIMIT 10;

-- Which 10 constructors have the most race wins?
SELECT c.name AS constructor, COUNT(res.resultid) AS wins
FROM results AS res
INNER JOIN constructors AS c ON c.constructorid = res.constructorid
WHERE res.positiontext = '1'
GROUP BY constructor
ORDER BY wins DESC
LIMIT 10;
