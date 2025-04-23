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
** 04/24/2024      Create Stored Procedures
** 04/24/2024      Check Stored Procedures
** 04/24/2024      Create User Define Function
** 04/24/2024      Check User Define Function
**
*/ 

-- Use Database
USE GamingDB;



-- Use the function to get the total gameplay duration with player name and game title for player_id = 1
DECLARE @player_id INT = 1;
SELECT PlayerName, GameTitle, TotalDuration
FROM dbo.GetTotalGameplayDurationWithDetails(@player_id);
