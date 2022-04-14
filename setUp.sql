--CREATE TABLES
CREATE TABLE MetroArea (
        metroAreaName varchar(127),
        `year` DATETIME,
        gdp DOUBLE,
        averageHousePrice DOUBLE,
        population DOUBLE,
        PRIMARY KEY(metroAreaName, `year`)
);

CREATE TABLE PlaysOn (
        playerID varchar(127),
        sport varchar(127),
        teamName varchar(127),
        `year` datetime,
        primary key (playerID, sport, teamName, `year`)
);

CREATE TABLE Player (
        playerID varchar(127),
        sport varchar(127),
        playerName varchar(127),
        hallOfFame int,
        primary key (playerID, sport)
);
        

--LOAD DATA
--REPLACE FILE PATH WITH LOCAL COMPUTER FILE PATH

--Table MetroArea
LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_MetroArea.csv' 
INTO TABLE MetroArea
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

--Table PlaysOn
LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_PlaysOn.csv' 
INTO TABLE PlaysOn
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  

--Table Player
LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_Players.csv' 
INTO TABLE Player
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  
  
--DROP TABLE
drop table MetroArea;
drop table PlaysOn;
drop table Player;
 
 
 