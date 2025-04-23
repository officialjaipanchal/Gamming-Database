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
** 04/24/2024      Create User Define Function
** 04/24/2024      Create Stored Procedures
**
*/ 

-- Use Database
USE GamingDB;

-- Drop the function
DROP FUNCTION IF EXISTS dbo.GetTotalGameplayDurationWithDetails;


-- Create the function
CREATE FUNCTION dbo.GetTotalGameplayDurationWithDetails(@player_id INT)
RETURNS TABLE
AS
RETURN
(
    SELECT p.name AS PlayerName, g.title AS GameTitle, SUM(gp.duration_seconds) AS TotalDuration
    FROM Gameplay gp
    JOIN Players p ON gp.player_id = p.player_id
    JOIN Games g ON gp.game_id = g.game_id
    WHERE gp.player_id = @player_id
    GROUP BY p.name, g.title
);


