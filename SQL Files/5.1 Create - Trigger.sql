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
**
*/ 


-- Create triggers on the original table to audit Insert records:

CREATE TRIGGER Games_InsertTrigger
ON Games
AFTER INSERT
AS
BEGIN
    INSERT INTO GamesAudit (game_id, title, genre, release_date, developer, change_datetime, change_type)
    SELECT
        game_id,
        title,
        genre,
        release_date,
        developer,
        GETDATE(),
        'INSERT'
    FROM
        inserted;
END;


-- Create triggers on the original table to audit Update records:

CREATE TRIGGER Games_UpdateTrigger
ON Games
AFTER UPDATE
AS
BEGIN
    INSERT INTO GamesAudit (game_id, title, genre, release_date, developer, change_datetime, change_type)
    SELECT
        game_id,
        title,
        genre,
        release_date,
        developer,
        GETDATE(),
        'UPDATE'
    FROM
        inserted;
END;

-- Create triggers on the original table to audit Delete records:

CREATE TRIGGER Games_DeleteTrigger
ON Games
AFTER DELETE
AS
BEGIN
    INSERT INTO GamesAudit (game_id, title, genre, release_date, developer, change_datetime, change_type)
    SELECT
        game_id,
        title,
        genre,
        release_date,
        developer,
        GETDATE(),
        'DELETE'
    FROM
        deleted;
END;