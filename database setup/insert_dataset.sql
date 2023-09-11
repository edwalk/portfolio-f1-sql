-- The commands below copy each dataset csv file into the PostgreSQL database.
\copy circuits (circuitid, circuitref, name, location, country, lat, lng, alt, url) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy constructor_results (constructorresultsid, raceid, constructorid, points, status) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy constructor_standings (constructorstandingsid, raceid, constructorid, points, position, positiontext, wins) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy constructors (constructorid, constructorref, name, nationality, url) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy driver_standings (driverstandingsid, raceid, driverid, points, position, positiontext, wins) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy drivers (driverid, driverref, number, code, forename, surname, dob, nationality, url) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy lap_times (raceid, driverid, lap, position, time, milliseconds) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy pit_stops (raceid, driverid, stop, lap, time, duration, milliseconds) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy qualifying (qualifyid, raceid, driverid, constructorid, number, position, q1, q2, q3) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy races (raceid, year, round, circuitid, name, date, time, url, fp1_date, fp1_time, fp2_date, fp2_time, fp3_date, fp3_time, quali_date, quali_time, sprint_date, sprint_time) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy results (resultid, raceid, driverid, constructorid, number, grid, position, positiontext, positionorder, points, laps, time, milliseconds, fastestlap, rank, fastestlaptime, fastestlapspeed, statusid) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy seasons (year, url) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy sprint_results (resultid, raceid, driverid, constructorid, number, grid, position, positiontext, positionorder, points, laps, time, milliseconds, fastestlap, fastestlaptime, statusid) FROM '<filepath>' DELIMITER ',' CSV HEADER;
\copy status (statusid, status) FROM '<filepath>' DELIMITER ',' CSV HEADER;