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
**
*/ 

-- To demonstrate the use of two stored procedures for the Games database, 
-- let's create two simple procedures: one to insert a new game into the Games table and another to update the genre of a game. 
-- We'll also include the create and drop scripts for these procedures.


-------------------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure 1
-------------------------------------------------------------------------------------------------------------------------------------------------

-- Drop the InsertGame stored procedure if it already exists
DROP PROCEDURE IF EXISTS InsertGame;
GO

-- Create a stored procedure named InsertGame to insert a new game into the Games table
CREATE PROCEDURE InsertGame
    @title VARCHAR(255),
    @genre VARCHAR(255),
    @release_date DATE,
    @developer VARCHAR(255)
AS
BEGIN
    -- Insert the provided values into the Games table
    INSERT INTO Games (title, genre, release_date, developer)
    VALUES (@title, @genre, @release_date, @developer);
END;
GO


-------------------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure 2
-------------------------------------------------------------------------------------------------------------------------------------------------

-- Drop the UpdateGameGenre stored procedure if it already exists
DROP PROCEDURE IF EXISTS UpdateGameGenre;
GO

-- Create a stored procedure named UpdateGameGenre to update the genre of a game in the Games table
CREATE PROCEDURE UpdateGameGenre
    @game_title VARCHAR(255),
    @new_genre VARCHAR(255)
AS
BEGIN
    -- Update the genre of the game specified by @game_title to the new genre @new_genre
    UPDATE Games
    SET genre = @new_genre
    WHERE title = @game_title;
END;
GO

