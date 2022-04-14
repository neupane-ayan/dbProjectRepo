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

CREATE TABLE Team (
        teamName varchar(127),
        sport varchar(127),
        metroAreaName varchar(127),
        primary key(teamName, sport)
);

CREATE TABLE Season (
        sport varchar(127),
        `year` datetime,
        champion varchar(127),
        mvp varchar(127),
        primary key(sport, `year`)
); 

CREATE TABLE TeamRecord (
        teamName varchar(127),
        sport varchar(127),
        `year` datetime,
        wins int,
        losses int,
        primary key(teamName, sport, `year`)
);       

LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_MetroArea.csv' 
INTO TABLE MetroArea
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_PlaysOn.csv' 
INTO TABLE PlaysOn
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;  


LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/table_Players.csv' 
INTO TABLE Player
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/Teams_relation.csv' 
INTO TABLE Team
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/Season_relation.csv' 
INTO TABLE Season
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/dbProjectRepo/TeamRecord_relation.csv' 
INTO TABLE TeamRecord
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table MetroArea;
drop table PlaysOn;
drop table Player;
drop table Team;
drop table Season;
drop table TeamRecord;
