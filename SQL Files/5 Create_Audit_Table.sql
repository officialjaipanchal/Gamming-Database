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
**
*/ 

-- Create the audit table (GamesAudit) with an additional column for the datetime of change:


CREATE TABLE GamesAudit (
    audit_id INT PRIMARY KEY IDENTITY(1,1),
    game_id INT,
    title VARCHAR(255),
    genre VARCHAR(255),
    release_date DATE,
    developer VARCHAR(255),
    change_datetime DATETIME,
    change_type VARCHAR(10) -- 'INSERT', 'UPDATE', 'DELETE'
);


-- To View the Table

SELECT * FROM GamesAudit;
