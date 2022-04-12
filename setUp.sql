--CREATE TABLE
CREATE TABLE MetroArea (
        metroAreaName varchar(127),
        `year` DATETIME,
        gdp DOUBLE,
        averageHousePrice DOUBLE,
        population BIGINT,
        PRIMARY KEY(metroAreaName, `year`)
        );
        

--LOAD DATA
LOAD DATA LOCAL INFILE '/Users/ayan/Desktop/DB project data/csv_final/table_MetroArea.csv' 
INTO TABLE MetroArea
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
  LINES TERMINATED BY '\n'
IGNORE 1 ROWS ;
  
  
--DROP TABLE
drop table MetroArea;
 
 
 