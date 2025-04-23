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
**
*/ 

-- To demonstrate the use of two stored procedures for the Games database, 
-- let's create two simple procedures: one to insert a new game into the Games table and another to update the genre of a game. 
-- We'll also include the create and drop scripts for these procedures.


-------------------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure 1
-------------------------------------------------------------------------------------------------------------------------------------------------

-- Execute the InsertGame stored procedure to insert a new game 'Tic tac toe' into the Games table
EXEC InsertGame 'Tic tac toe', 'Adventure', '2023-05-15', 'jerryGames';

-------------------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure 2
-------------------------------------------------------------------------------------------------------------------------------------------------


-- Execute the UpdateGameGenre stored procedure to update the genre of the game 'Tic tac toe' to 'Brain'
EXEC UpdateGameGenre 'Tic tac toe', 'Brain';

-------------------------------------------------------------------------------------------------------------------------------------------------
-- Check Stored Procedure Result
-------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM Games;