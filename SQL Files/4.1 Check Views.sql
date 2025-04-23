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
**
*/ 

-- View 1: Top Rated Games
-- This view shows the top-rated games based on average user ratings.
-- Explanation: This view allows the user to quickly see which games have the highest average ratings, helping them discover popular and highly-rated games among players.

SELECT * FROM TopRatedGames;

-- View 2: Player Friends Network
-- This view shows the friends network for each player, listing their friends' names.
-- Explanation: This view provides a snapshot of each player's friends network, helping them visualize their social connections within the game and fostering a sense of community.

SELECT * From PlayerFriendsNetwork;


-- View 3: Player Achievements
-- This view shows Player Achievements.
-- Explanation: This view provides a summary of the total number of achievements unlocked by each player for each game. 
-- It can help players track their progress and compare their achievements with others, adding a competitive element to the game.

SELECT * From PlayerAchievements;



-- View 4: Player Most Played Games
-- This view shows Most Played Games.
-- This view shows the most played game for each player, along with the total playtime for that game. It first calculates the total playtime for each player and game combination. 
-- Then, it finds the maximum total playtime for each player using a subquery. Finally, it joins the player, game, and total playtime information to display the most played game for each player.

SELECT * From MostPlayedGames;









