# f1-sql-portfolio
 A small project to demonstrate SQL skills. To do this, I have taken the Formula 1 dataset from Ergast and sought to answer various questions about F1 history and statistics.
 As I practice more SQL concepts, additional questions & queries will be added below.

# Skills displayed
* Intermediate SQL
* Data cleaning
* PostgreSQL database creation
* Relational databases

# Dataset source
Dataset sourced here: http://ergast.com/mrd/ .

# Preliminary steps
Before being able to query the database using SQL, the following steps had to be carried out:

* Create tables to reflect dataset files (see [create_tables.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/database%20setup/create_tables.sql))
* Insert data into PostgreSQL database (see [insert_dataset.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/database%20setup/insert_dataset.sql))
* Remove /N values from the database and replace with "" null values.
* Replace invalid characters from driver names (see [driver_names_clean.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/database%20setup/driver_names_clean.sql))
* Replace invalid characters from circuit names (see [circuit_names_clean.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/database%20setup/circuit_names_clean.sql))

# Questions

## Drivers | Queries: [driver.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/drivers.sql)
* How many drivers have participated in F1 in each season since 1950? ([drivers-count-per-year.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/drivers-count-per-year.txt))
* Which drivers participated in "x" year? (example in query is 1952) ([driver-list-per-year.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/driver-list-per-year.txt))
* Who are the Top 10 Grand Prix winners since 1950? ([top-10-winners.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-winners.txt))
* Who are the Top 10 Grand Prix participants since 1950? ([top-10-participants.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-participants.txt))
* Which 10 drivers have participated in most Grand Prix races without winning? ([top-10-participants-without-wins.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-participants-without-wins.txt))
* Who are the Top 10 Grand Prix drivers with the best win ratio? ([top-10-win-ratio.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-win-ratio.txt))

# Constructors  | Queries:  [constructors.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/constructors.sql)
* Which 10 constructors have the most race participations? ([top-10-constructor-races.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-constructor-races.txt))
* Which 10 constructors have the most race wins? ([top-10-constructor-wins.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-constructor-wins.txt))

  
# Races  | Queries: [races.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/races.sql)
* How many races have taken place in each country throughout F1's history? ([races-per-country.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/races-per-country.txt))
* What are the 10 most visited tracks in Grand Prix history? ([top-10-tracks.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top-10-tracks.txt))
* Which decade has the most Grand Prix races per season on average? ([average-races-per-year-decade.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/average-races-per-year-decade.txt))
  
# Retirements  | Queries: [retirements.sql](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/retirements.sql)
* What are the most common retirement causes in F1 history? ([top-10-retirement-causes.tx](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/top10-retirement-causes.txt)t)
* What is the proportion of race participations that end up in retirement for each decade since 1950? ([retirements-proportion.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/retirements-proportion.txt))
* Which drivers have the most retirements? ([retirements-per-driver.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/retirements-per-driver.txt))
* Which constructors have the most retirements? ([retirements-per-constructor.txt](https://github.com/edwalk/portfolio-f1-sql/blob/main/queries/queries_output/retirements-per-constructor.txt))
