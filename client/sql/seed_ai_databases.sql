LOAD DATA LOCAL INFILE  '../seed_data.csv'
INTO TABLE ai_databases
FIELDS TERMINATED BY '\t' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r'
IGNORE 1 ROWS;