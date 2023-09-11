CREATE TABLE circuits(
	circuitId int PRIMARY KEY,
	circuitRef varchar,
	name varchar,
	location varchar,
	country varchar,
	lat float,
	lng float,
	alt varchar,
	url varchar
);


CREATE TABLE constructor_results(
	constructorResultsId int PRIMARY KEY,
	raceId int,
	constructorId int,
	points float,
	status varchar
);

CREATE TABLE constructor_standings(
	constructorStandingsId int PRIMARY KEY,
	raceId int,
	constructorId int,
	points float,
	position int,
	positionText varchar,
	wins int
);

CREATE TABLE constructors(
	constructorId int PRIMARY KEY,
	constructorRef varchar,
	name varchar,
	nationality varchar,
	url varchar
);

CREATE TABLE driver_standings(
	driverStandingsId int PRIMARY KEY,
	raceId int,
	driverId int,
	points float,
	position int,
	positionText varchar,
	wins int
);

CREATE TABLE drivers(
	driverId int PRIMARY KEY,
	driverRef varchar,
	number varchar,
	code varchar,
	forename varchar,
	surname varchar,
	dob date,
	nationality varchar,
	url varchar
);

CREATE TABLE lap_times(
	lapId serial PRIMARY KEY,
	raceId int,
	driverId int,
	lap int,
	position int,
	time varchar,
	milliseconds int
);

CREATE TABLE pit_stops(
	pitStopId serial PRIMARY KEY,
	raceId int,
	driverId int,
	stop int,
	lap int,
	time time, 
	duration float,
	milliseconds int
);

CREATE TABLE qualifying(
	qualifyId int PRIMARY KEY,
	raceId int,
	driverId int,
	constructorId int,
	number int,
	position int, 
	q1 varchar,
	q2 varchar,
	q3 varchar
);

CREATE TABLE races(
	raceId int PRIMARY KEY,
	year int,
	round int,
	circuitId int,
	name varchar,
	date date,
	time time, 
	url varchar,
	fp1_date varchar,
	fp1_time varchar,
	fp2_date varchar,
	fp2_time varchar,
	fp3_date varchar,
	fp3_time varchar,
	quali_date varchar,
	quali_time varchar,
	sprint_date varchar,
	sprint_time varchar
);

CREATE TABLE results(
	resultId int PRIMARY KEY,
	raceId int,
	driverId int,
	constructorId int,
	number int,
	grid int,
	position varchar,
	positionText varchar,
	positionOrder int,
	points float,
	laps int,
	time varchar,
	milliseconds varchar,
	fastestLap varchar,
	rank varchar,
	fastestLapTime varchar,
	fastestLapSpeed varchar,
	statusId int
);

CREATE TABLE seasons(
	seasonID serial PRIMARY KEY,
	year int,
	url varchar
);

CREATE TABLE sprint_results(
	resultId int PRIMARY KEY,
	raceId int,
	driverId int,
	constructorId int,
	number int,
	grid int,
	position varchar,
	positionText varchar,
	positionOrder varchar,
	points int,
	laps int,
	time varchar,
	milliseconds varchar,
	fastestLap int,
	fastestLapTime varchar,
	statusId int
);

CREATE TABLE status(
	statusId int PRIMARY KEY,
	status varchar
);
