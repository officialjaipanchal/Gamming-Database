/* 
** Author: Jaykumar Suthar 
** Course: IFT/530 
** SQL Server Version:  Microsoft Azure SQL Edge Developer (RTM) - 15.0.2000.1574 (ARM64)  	
** Jan 25 2023 10:36:08  	Copyright (C) 2019 Microsoft Corporation 	Linux (Ubuntu 18.04.6 LTS aarch64) <ARM64>
**
** Project History
** Date Created    Comments 
**
** 04/24/2024      Create Database 
** 04/24/2024      Create Tables 
** 04/24/2024      Populate Tables 
** 04/24/2024      View Populated Tables 
** 04/24/2024      Create View
** 04/24/2024      Check the View
** 04/24/2024      Create The Audit Table 
** 04/24/2024      Create Trigger
** 04/24/2024      Check the GameAudit table with Insert-Update-Delete Queries
**
*/ 


-- Insert another new game into the Games table
INSERT INTO Games (title, genre, release_date, developer)
VALUES ('Test', 'Action', '2020-06-02', 'check');

-- Update the title of a game in the Games table
UPDATE Games
SET title = 'Test-Check'
WHERE developer = 'check';


-- Delete a game from the Games table
DELETE FROM Games WHERE title = 'Test-Check';

-- Select all records from the GamesAudit table to view the audit trail
SELECT * FROM GamesAudit;

