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
**
*/ 

-- View 1: Top Rated Games
-- This view shows the top-rated games based on average user ratings.
-- Explanation: This view allows the user to quickly see which games have the highest average ratings, helping them discover popular and highly-rated games among players.

CREATE VIEW TopRatedGames AS
SELECT
    GameTitle,
    AverageRating
FROM
    (
        SELECT
            g.title AS GameTitle,
            AVG(r.rating) AS AverageRating,
            ROW_NUMBER() OVER (ORDER BY AVG(r.rating) DESC) AS Ranking
        FROM
            Games g
            INNER JOIN Reviews r ON g.game_id = r.game_id
        GROUP BY
            g.title
    ) AS RatingsWithRanking
WHERE
    Ranking = 1;




-- View 2: Player Friends Network
-- This view shows the friends network for each player, listing their friends' names.
-- Explanation: This view provides a snapshot of each player's friends network, helping them visualize their social connections within the game and fostering a sense of community.


CREATE VIEW PlayerFriendsNetwork AS
SELECT
    p1.name AS PlayerName,
    STRING_AGG(p2.name, ', ') AS Friends
FROM
    Players p1
    JOIN Friends f ON p1.player_id = f.player_id1
    JOIN Players p2 ON f.player_id2 = p2.player_id
GROUP BY
    p1.name;



-- View 3: Player Achievements
-- This view shows Player Achievements.
-- Explanation: This view provides a summary of the total number of achievements unlocked by each player for each game. 
-- It can help players track their progress and compare their achievements with others, adding a competitive element to the game.



CREATE VIEW PlayerAchievements AS
SELECT
    p.name AS PlayerName,
    g.title AS GameTitle,
    COUNT(a.achievement_id) AS TotalAchievements
FROM
    Players p
    JOIN Achievements a ON p.player_id = a.player_id
    JOIN Games g ON a.game_id = g.game_id
GROUP BY
    p.name, g.title;


-- View 4: Player Most Played Games
-- Explanation: This view shows the most played game for each player, along with the total playtime for that game. 
-- It first calculates the total playtime for each player and game combination. Then, it finds the maximum total playtime for each player using a subquery. 
-- Finally, it joins the player, game, and total playtime information to display the most played game for each player.

CREATE VIEW MostPlayedGames AS
SELECT
    p.name AS PlayerName,
    g.title AS GameTitle,
    TotalPlayTimeSeconds
FROM
    (
        SELECT
            gp.player_id,
            gp.game_id,
            SUM(DATEDIFF(SECOND, gp.start_time, gp.end_time)) AS TotalPlayTimeSeconds
        FROM
            Gameplay gp
        GROUP BY
            gp.player_id,
            gp.game_id
    ) AS PlayerGamePlayTimes
    JOIN Players p ON PlayerGamePlayTimes.player_id = p.player_id
    JOIN Games g ON PlayerGamePlayTimes.game_id = g.game_id
    JOIN (
        SELECT
            player_id,
            MAX(TotalPlayTimeSeconds) AS MaxPlayTime
        FROM
            (
                SELECT
                    gp.player_id,
                    gp.game_id,
                    SUM(DATEDIFF(SECOND, gp.start_time, gp.end_time)) AS TotalPlayTimeSeconds
                FROM
                    Gameplay gp
                GROUP BY
                    gp.player_id,
                    gp.game_id
            ) AS PlayerGamePlayTimes
        GROUP BY
            player_id
    ) AS MaxPlayTimes ON PlayerGamePlayTimes.player_id = MaxPlayTimes.player_id
                     AND PlayerGamePlayTimes.TotalPlayTimeSeconds = MaxPlayTimes.MaxPlayTime;
