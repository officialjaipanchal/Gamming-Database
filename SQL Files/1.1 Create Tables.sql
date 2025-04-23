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
**
*/ 
-- Use Database
USE GamingDB;

-- Drop table if it exists
IF OBJECT_ID('players', 'U') IS NOT NULL
    DROP TABLE players;

-- Create Players table to store player information
CREATE TABLE Players (
    -- Primary key for the table, auto-incremented
    player_id INT PRIMARY KEY IDENTITY(1,1),
    -- Name of the player, not null
    name VARCHAR(255) NOT NULL,
    -- Email of the player, unique and not null
    email VARCHAR(255) NOT NULL UNIQUE,
    -- Date of birth of the player
    date_of_birth DATE
);


-- Drop table if it exists
IF OBJECT_ID('Games', 'U') IS NOT NULL
    DROP TABLE Games;

-- Create Games table to store game information
CREATE TABLE Games (
    -- Primary key for the table, auto-incremented
    game_id INT PRIMARY KEY IDENTITY(1,1),
    -- Title of the game, unique and not null
    title VARCHAR(255) NOT NULL UNIQUE,
    -- Genre of the game
    genre VARCHAR(255),
    -- Release date of the game
    release_date DATE,
    -- Developer of the game
    developer VARCHAR(255)
);


-- Drop table if it exists
IF OBJECT_ID('Achievements', 'U') IS NOT NULL
    DROP TABLE Achievements;

-- Create Achievements table to store player achievements in games
CREATE TABLE Achievements (
    -- Auto-incremented primary key for the achievement
    achievement_id INT IDENTITY(1,1),
    -- ID of the player who achieved the achievement
    player_id INT,
    -- ID of the game for which the achievement was achieved
    game_id INT,
    -- Description of the achievement
    description TEXT,
    -- Date when the achievement was achieved
    date_achieved DATE,
    -- Composite primary key consisting of achievement_id, player_id, and game_id
    PRIMARY KEY (achievement_id, player_id, game_id),
    -- Foreign key constraint to link player_id to Players table
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);



-- Drop table if it exists
IF OBJECT_ID('Reviews', 'U') IS NOT NULL
    DROP TABLE Reviews;

-- Create Reviews table to store player reviews for games
CREATE TABLE Reviews (
    -- Primary key for the table, auto-incremented
    review_id INT IDENTITY(1,1),
    -- ID of the player who wrote the review
    player_id INT,
    -- ID of the game for which the review was written
    game_id INT,
    -- Rating given by the player for the game (e.g., 4.5)
    rating DECIMAL(2,1),
    -- Content of the review
    review_content TEXT,
    -- Composite primary key consisting of review_id, player_id, and game_id
    PRIMARY KEY (review_id, player_id, game_id),
    -- Foreign key constraint to link player_id to Players table
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

-- Drop table if it exists
IF OBJECT_ID('Inventory', 'U') IS NOT NULL
    DROP TABLE Inventory;

-- Create Inventory table to store player inventory for games
CREATE TABLE Inventory (
    -- Primary key for the table, auto-incremented
    inventory_id INT IDENTITY(1,1),
    -- ID of the player who owns the inventory
    player_id INT,
    -- ID of the game for which the inventory is owned
    game_id INT,
    -- Name of the item in the inventory
    item_name VARCHAR(255),
    -- Quantity of the item in the inventory
    quantity INT,
    -- Date when the item was acquired
    date_acquired DATE,
    -- Composite primary key consisting of inventory_id, player_id, and game_id
    PRIMARY KEY (inventory_id, player_id, game_id),
    -- Foreign key constraint to link player_id to Players table
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

-- Drop table if it exists
IF OBJECT_ID('Friends', 'U') IS NOT NULL
    DROP TABLE Friends;

-- Create Friends table to store player friendships
CREATE TABLE Friends (
    -- Primary key for the table, auto-incremented
    friendship_id INT IDENTITY(1,1),
    -- ID of the first player in the friendship
    player_id1 INT,
    -- ID of the second player in the friendship
    player_id2 INT,
    -- Date when the friendship was added
    date_added DATE,
    -- Composite primary key consisting of friendship_id, player_id, and game_id
    PRIMARY KEY (friendship_id, player_id1, player_id2),
    -- Foreign key constraint to link player_id1 to Players table
    FOREIGN KEY (player_id1) REFERENCES Players(player_id),
    -- Foreign key constraint to link player_id2 to Players table
    FOREIGN KEY (player_id2) REFERENCES Players(player_id)
);


-- Drop table if it exists
IF OBJECT_ID('Transactions', 'U') IS NOT NULL
    DROP TABLE Transactions;

-- Create Transactions table to store player transactions
-- Create Transactions table to store player transactions
CREATE TABLE Transactions (
    -- Primary key for the table, auto-incremented
    transaction_id INT IDENTITY(1,1),
    -- ID of the player involved in the transaction
    player_id INT,
    -- ID of the game involved in the transaction
    game_id INT,
    -- Type of transaction (e.g., purchase, sale)
    transaction_type VARCHAR(255),
    -- Amount of the transaction
    amount DECIMAL(10,2),
    -- Date of the transaction
    date DATE,
    -- Composite primary key consisting of transaction_id, player_id, and game_id
    PRIMARY KEY (transaction_id, player_id, game_id),
    -- Foreign key constraint to link player_id to Players table
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);



-- Drop table if it exists
IF OBJECT_ID('Events', 'U') IS NOT NULL
    DROP TABLE Events;
    
-- Create Events table to store game events
CREATE TABLE Events (
    -- Primary key for the table, auto-incremented
    event_id INT IDENTITY(1,1),
    -- Name of the event
    event_name VARCHAR(255),
    -- Description of the event
    description TEXT,
    -- Date of the event
    date DATE,
    -- ID of the game associated with the event
    game_id INT,
    -- Composite primary key consisting of event_id, player_id, and game_id
    PRIMARY KEY (event_id, game_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);


-- Drop table if it exists
IF OBJECT_ID('Gameplay', 'U') IS NOT NULL
    DROP TABLE Gameplay;

-- Create Gameplay table to store gameplay information
CREATE TABLE Gameplay (
    -- Primary key for the table, auto-incremented
    gameplay_id INT IDENTITY(1,1),
    -- ID of the player
    player_id INT,
    -- ID of the game being played
    game_id INT,
    -- Start time of the gameplay
    start_time DATETIME,
    -- End time of the gameplay
    end_time DATETIME,
    -- Duration of the gameplay in seconds
    duration_seconds INT,
    -- Score achieved in the gameplay
    score INT,
    -- Composite primary key consisting of event_id, player_id, and game_id
    PRIMARY KEY (gameplay_id, player_id, game_id),
    -- Foreign key constraint to link player_id to Players table
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    -- Foreign key constraint to link game_id to Games table
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);



-- Drop table if it exists
IF OBJECT_ID('PlayerInteractions', 'U') IS NOT NULL
    DROP TABLE PlayerInteractions;

-- Create PlayerInteractions table to store interactions between players
CREATE TABLE PlayerInteractions (
    -- Primary key for the table, auto-incremented
    interaction_id INT IDENTITY(1,1),
    -- ID of the first player involved in the interaction
    player_id1 INT,
    -- ID of the second player involved in the interaction
    player_id2 INT,
    -- Type of interaction (e.g., message, friend request)
    interaction_type VARCHAR(255),
    -- Date of the interaction
    interaction_date DATE,
    Primary KEY (interaction_id, player_id1, player_id2),
    -- Foreign key constraint to link player_id1 to Players table
    FOREIGN KEY (player_id1) REFERENCES Players(player_id),
    -- Foreign key constraint to link player_id2 to Players table
    FOREIGN KEY (player_id2) REFERENCES Players(player_id)
);
