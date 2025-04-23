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
** 04/24/2024      Create Cursor
**
*/ 

-- Use Database
USE GamingDB;


-- Declare variables for game cursor
DECLARE @game_id INT;
DECLARE @title VARCHAR(255);
DECLARE @genre VARCHAR(255);
DECLARE @release_date DATE;
DECLARE @developer VARCHAR(255);

-- Declare cursor to iterate over games
DECLARE game_cursor CURSOR FOR
SELECT game_id, title, genre, release_date, developer
FROM Games;

-- Declare variables for player cursor
DECLARE @player_id INT;
DECLARE @player_name VARCHAR(255);
DECLARE @player_email VARCHAR(255);
DECLARE @player_dob DATE;

-- Declare cursor to iterate over players
DECLARE player_cursor CURSOR FOR
SELECT player_id, name, email, date_of_birth
FROM Players;

-- Use the game cursor to print game information
PRINT 'Games:';
PRINT '------------------------------------------------------------------------------------------------------------------';
PRINT 'Game ID      | Title                | Genre        | Release Date    | Developer';
PRINT '------------------------------------------------------------------------------------------------------------------';

-- Open and fetch from game cursor
OPEN game_cursor;
FETCH NEXT FROM game_cursor INTO @game_id, @title, @genre, @release_date, @developer;

-- Print game information
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CAST(@game_id AS VARCHAR) + '            | ' + @title + '           | ' + @genre + '         | ' + CAST(@release_date AS VARCHAR) + '      | ' + @developer;
    FETCH NEXT FROM game_cursor INTO @game_id, @title, @genre, @release_date, @developer;
END;

-- Close and deallocate game cursor
CLOSE game_cursor;
DEALLOCATE game_cursor;

-- Print a separator between the outputs of the two cursors
PRINT '';
PRINT 'Players:';
PRINT '------------------------------------------------------------------------------------------------------------------';
PRINT 'Player ID    | Name                 | Email                | Date of Birth';
PRINT '------------------------------------------------------------------------------------------------------------------';

-- Open and fetch from player cursor
OPEN player_cursor;
FETCH NEXT FROM player_cursor INTO @player_id, @player_name, @player_email, @player_dob;

-- Print player information
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CAST(@player_id AS VARCHAR) + '            | ' + @player_name + '           | ' + @player_email + '         | ' + CAST(@player_dob AS VARCHAR);
    FETCH NEXT FROM player_cursor INTO @player_id, @player_name, @player_email, @player_dob;
END;

-- Close and deallocate player cursor
CLOSE player_cursor;
DEALLOCATE player_cursor;
