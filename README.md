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

* Create tables to reflect dataset files (see create_tables.sql)
* Insert data into PostgreSQL database (see insert_dataset.sql)
* Remove /N values from the database and replace with "" null values.
* Replace invalid characters from driver names (see driver_names_clean.sql)

# Questions

## Drivers | Queries: 
* How many drivers have participated in F1 in each season since 1950?
* Which drivers participated in "x" year? (example in query is 1952)
* Who are the Top 10 Grand Prix winners since 1950?
* Who are the Top 10 Grand Prix participants since 1950?
* Which 10 drivers have participated in most Grand Prix races without winning?
* Who are the Top 10 Grand Prix drivers with the best win ratio?

#Constructors  | Queries: 
* Which 10 constructors have the most race participations?
* Which 10 constructors have the most race wins?
* Which 10 constructors have the best win ratio?
  
# Races  | Queries: 
* How many races have taken place in each country throughout F1's history?
* What are the 10 most visited tracks in Grand Prix history?
* Which decade has the most Grand Prix races per season on average?
  
# Retirements  | Queries: 
* What are the most common retirement causes in F1 history?
* What is the proportion of race participations that end up in retirement for each decade since 1950?
* Which drivers have the most retirements?
* Which constructors have the most retirements?
