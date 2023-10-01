-- The aim of this query below is to create a dataset for use in Tableau Public. I was looking to extract the results table, expanded with additional datapoints from the drivers, constructors, races and circuits tables.

WITH results_with_drivers_constructors AS(
    SELECT 
        r.raceid, 
        r.driverid, 
        d.forename, 
        d.surname, 
        d.nationality, 
        r.constructorid, 
        c.name AS constructor, 
        r.grid, 
        r.positiontext, 
        r.points, 
        r.laps, 
        r.time, 
        r.fastestlaptime, 
        r.fastestlapspeed
    FROM results AS r
    LEFT JOIN drivers AS d
    ON r.driverid = d.driverid
    LEFT JOIN constructors AS c 
    ON r.constructorid = c.constructorid
), 

results_with_racedata AS(
    SELECT 
        rwdc.raceid, 
        r.circuitid, 
        r.name AS race_name, 
        r.year AS race_year,  
        r.date AS race_date, 
        rwdc.driverid, 
        rwdc.forename, 
        rwdc.surname,
        rwdc.nationality, 
        rwdc.constructorid, 
        rwdc.constructor, 
        rwdc.grid, 
        rwdc.positiontext, 
        rwdc.points,
        rwdc.laps, 
        rwdc.time, 
        rwdc.fastestlaptime, 
        rwdc.fastestlapspeed
    FROM results_with_drivers_constructors AS rwdc
    LEFT JOIN races AS r ON rwdc.raceid = r.raceid
)

SELECT 
    rwrd.raceid, 
    rwrd.circuitid, 
    c.name AS circuit_name, 
    c.location AS circuit_location, 
    c.country AS circuit_country, 
    rwrd.race_name,
    rwrd.race_year,
    rwrd.race_date,
    rwrd.driverid,
    rwrd.forename,
    rwrd.surname,
    rwrd.nationality,
    rwrd.constructorid,
    rwrd.constructor,
    rwrd.grid,
    rwrd.positiontext,
    rwrd.points,
    rwrd.laps,
    rwrd.time,
    rwrd.fastestlaptime,
    rwrd.fastestlapspeed
FROM results_with_racedata AS rwrd
LEFT JOIN circuits AS c ON rwrd.circuitid = c.circuitid;
