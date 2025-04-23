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
**
*/ 

-- Populate Data into the Players table
-- Inserting player records

INSERT INTO Players (name, email, date_of_birth) VALUES
    ('Jay S', 'jay.s@example.com', '1999-07-29'),
    ('Jane Smith', 'jane.smith@example.com', '1992-05-15'),
    ('Alice Johnson', 'alice.johnson@example.com', '1985-09-30'),
    ('Bob Williams', 'bob.williams@example.com', '1988-03-20'),
    ('Michael Brown', 'michael.brown@example.com', '1995-11-10'),
    ('Emily Davis', 'emily.davis@example.com', '1998-07-25'),
    ('James Wilson', 'james.wilson@example.com', '1982-12-05'),
    ('Sarah Miller', 'sarah.miller@example.com', '1991-04-18'),
    ('David Moore', 'david.moore@example.com', '1987-08-08'),
    ('Jennifer Taylor', 'jennifer.taylor@example.com', '1993-02-22'),
    ('Richard Anderson', 'richard.anderson@example.com', '1984-06-12'),
    ('Linda Thomas', 'linda.thomas@example.com', '1989-10-03'),
    ('Charles Jackson', 'charles.jackson@example.com', '1996-01-17'),
    ('Patricia White', 'patricia.white@example.com', '1983-07-07'),
    ('Mark Harris', 'mark.harris@example.com', '1994-03-28'),
    ('Karen Martinez', 'karen.martinez@example.com', '1986-09-13'),
    ('Steven Young', 'steven.young@example.com', '1997-05-05'),
    ('Barbara Lee', 'barbara.lee@example.com', '1981-11-27'),
    ('William Scott', 'william.scott@example.com', '1990-06-08'),
    ('Jessica King', 'jessica.king@example.com', '1992-12-30'),
    ('Paul Garcia', 'paul.garcia@example.com', '1985-04-14'),
    ('Margaret Rodriguez', 'margaret.rodriguez@example.com', '1988-10-25'),
    ('Kenneth Martinez', 'kenneth.martinez@example.com', '1995-02-18'),
    ('Lisa Hernandez', 'lisa.hernandez@example.com', '1998-08-11'),
    ('Steven Wright', 'steven.wright@example.com', '1982-01-03'),
    ('Betty Lopez', 'betty.lopez@example.com', '1991-05-26'),
    ('Donald Adams', 'donald.adams@example.com', '1987-09-16'),
    ('Helen Nelson', 'helen.nelson@example.com', '1993-03-08'),
    ('Jason Carter', 'jason.carter@example.com', '1984-07-01'),
    ('Deborah Mitchell', 'deborah.mitchell@example.com', '1989-11-23'),
    ('Ronald Perez', 'ronald.perez@example.com', '1996-06-15'),
    ('Shirley Roberts', 'shirley.roberts@example.com', '1983-10-07'),
    ('Amy Gonzalez', 'amy.gonzalez@example.com', '1994-04-30'),
    ('Kenneth Adams', 'kenneth.adams@example.com', '1986-09-20');

-- Populate Data into the Games 
-- Inserting games in table

INSERT INTO Games (title, genre, release_date, developer) VALUES
    ('The Witcher 3: Wild Hunt', 'Action RPG', '2015-05-19', 'CD Projekt Red'),
    ('Grand Theft Auto V', 'Action-adventure', '2013-09-17', 'Rockstar North'),
    ('Red Dead Redemption 2', 'Action-adventure', '2018-10-26', 'Rockstar Games'),
    ('The Legend of Zelda: Breath of the Wild Pro', 'Action-adventure', '2018-03-03', 'Nintendo EPD'),
    ('Dark Souls III', 'Action RPG', '2016-04-12', 'FromSoftware'),
    ('Bloodborne', 'Action RPG', '2015-03-24', 'FromSoftware'),
    ('Horizon Zero Dawn', 'Action RPG', '2017-02-28', 'Guerrilla Games'),
    ('Persona 5', 'Role-playing', '2016-09-15', 'Atlus'),
    ('God of War', 'Action-adventure', '2018-04-20', 'Santa Monica Studio'),
    ('Uncharted 4: A Thief''s End', 'Action-adventure', '2016-05-10', 'Naughty Dog'),
    ('The Last of Us Part II', 'Action-adventure', '2020-06-19', 'Naughty Dog'),
    ('Super Mario Odyssey', 'Platformer', '2017-10-27', 'Nintendo EPD'),
    ('Overwatch', 'First-person shooter', '2016-05-24', 'Blizzard Entertainment'),
    ('Fortnite', 'Battle royale', '2017-07-25', 'Epic Games'),
    ('Minecraft', 'Sandbox', '2011-11-18', 'Mojang Studios'),
    ('League of Legends', 'MOBA', '2009-10-27', 'Riot Games'),
    ('World of Warcraft', 'MMORPG', '2004-11-23', 'Blizzard Entertainment'),
    ('Counter-Strike: Global Offensive', 'First-person shooter', '2012-08-21', 'Valve'),
    ('Dota 2', 'MOBA', '2013-07-09', 'Valve'),
    ('Final Fantasy XIV', 'MMORPG', '2010-09-30', 'Square Enix'),
    ('Rocket League', 'Sports', '2015-07-07', 'Psyonix'),
    ('Halo 5: Guardians', 'First-person shooter', '2015-10-27', '343 Industries'),
    ('Apex Legends', 'Battle royale', '2019-02-04', 'Respawn Entertainment'),
    ('Fallout 4', 'Action RPG', '2015-11-10', 'Bethesda Game Studios'),
    ('Assassin''s Creed Odyssey', 'Action RPG', '2018-10-05', 'Ubisoft'),
    ('Cyberpunk 2077', 'Action RPG', '2020-12-10', 'CD Projekt'),
    ('Death Stranding', 'Action', '2019-11-08', 'Kojima Productions'),
    ('The Elder Scrolls V: Skyrim', 'Action RPG', '2011-11-11', 'Bethesda Game Studios'),
    ('FIFA 21', 'Sports', '2020-10-09', 'EA Vancouver'),
    ('Assassin''s Creed Valhalla', 'Action RPG', '2020-11-10', 'Ubisoft'),
    ('The Legend of Zelda: Breath of the Wild', 'Action-adventure', '2017-03-03', 'Nintendo'),
    ('Red Dead Redemption 3', 'Action-adventure', '2019-10-26', 'Rockstar Games'),
    ('Cyberpunk 20777', 'Action RPG', '2021-12-10', 'CD Projekt'),
    ('GTA V', 'Action-adventure', '2013-09-17', 'Rockstar Games'),
    ('The Witcher 2: Wild Hunt', 'Action RPG', '2015-05-19', 'CD Projekt'),
    ('God of War TWO', 'Action-adventure', '2019-04-20', 'Santa Monica Studio'),
    ('Marvel''s Spider-Man', 'Action-adventure', '2018-09-07', 'Insomniac Games'),
    ('Dark Souls IIII', 'Action RPG', '2017-04-12', 'FromSoftware'),
    ('Halo 6: Guardians', 'First-person shooter', '2016-10-27', '343 Industries');

-- Populate Data into the Gameplay table
-- Inserting game play times in table

INSERT INTO Gameplay (player_id, game_id, start_time, end_time, duration_seconds, score)
VALUES
    (1, 241, '2023-01-01 18:00:00', '2023-01-01 20:00:00', 7200, 450),
    (1, 242, '2023-01-02 20:00:00', '2023-01-02 22:30:00', 9000, 380),
    (2, 243, '2023-01-03 15:30:00', '2023-01-03 17:45:00', 8100, 410),
    (2, 244, '2023-01-04 14:00:00', '2023-01-04 16:00:00', 7200, 360),
    (3, 245, '2023-01-05 19:00:00', '2023-01-05 21:30:00', 9000, 290),
    (3, 246, '2023-01-06 21:45:00', '2023-01-07 00:15:00', 9000, 340),
    (4, 247, '2023-01-07 16:30:00', '2023-01-07 18:45:00', 8100, 220),
    (4, 248, '2023-01-08 13:00:00', '2023-01-08 15:30:00', 9000, 180),
    (5, 249, '2023-01-09 10:30:00', '2023-01-09 12:45:00', 8100, 95),
    (5, 250, '2023-01-10 17:00:00', '2023-01-10 19:30:00', 9000, 45),
    (6, 251, '2023-01-11 20:30:00', '2023-01-11 23:00:00', 9000, 420),
    (6, 252, '2023-01-12 14:00:00', '2023-01-12 16:45:00', 8100, 385),
    (7, 253, '2023-01-13 12:00:00', '2023-01-13 14:30:00', 9000, 330),
    (7, 254, '2023-01-14 09:30:00', '2023-01-14 12:00:00', 9000, 280),
    (8, 255, '2023-01-15 18:00:00', '2023-01-15 20:15:00', 8100, 245),
    (8, 256, '2023-01-16 20:30:00', '2023-01-16 23:00:00', 9000, 190),
    (9, 257, '2023-01-17 15:00:00', '2023-01-17 17:30:00', 9000, 140),
    (9, 258, '2023-01-18 17:45:00', '2023-01-18 19:45:00', 7200, 95),
    (10, 259, '2023-01-19 13:30:00', '2023-01-19 15:45:00', 8100, 45),
    (10, 260, '2023-01-20 16:00:00', '2023-01-20 18:30:00', 9000, 470),
    (1, 261, '2023-01-21 14:00:00', '2023-01-21 16:30:00', 9000, 430),
    (1, 262, '2023-01-22 18:00:00', '2023-01-22 20:15:00', 8100, 390),
    (2, 263, '2023-01-23 19:30:00', '2023-01-23 22:00:00', 9000, 335),
    (2, 264, '2023-01-24 16:45:00', '2023-01-24 19:00:00', 8100, 280),
    (3, 265, '2023-01-25 13:00:00', '2023-01-25 15:15:00', 8100, 230);


-- Populate Data into the Achievements table
INSERT INTO Achievements (player_id, game_id, description, date_achieved) VALUES
    (1, 251, 'Completed the main story', '2023-01-15'),
    (2, 252, 'Reached 100% completion', '2022-11-30'),
    (3, 253, 'Defeated the final boss', '2023-04-05'),
    (4, 254, 'Unlocked all skills', '2023-02-20'),
    (5, 255, 'Found all hidden items', '2022-12-10'),
    (6, 256, 'Completed all side quests', '2023-03-25'),
    (7, 257, 'Reached the highest level', '2023-01-05'),
    (8, 258, 'Defeated the final boss', '2022-11-15'),
    (9, 259, 'Completed the main story', '2023-04-10'),
    (10, 260, 'Reached 100% completion', '2023-02-28'),
    (11, 261, 'Unlocked all achievements', '2022-12-15'),
    (12, 262, 'Collected all collectibles', '2023-03-30'),
    (13, 263, 'Finished the game in under 10 hours', '2023-01-20'),
    (14, 264, 'Defeated the final boss', '2023-02-10'),
    (15, 265, 'Reached 100 wins', '2023-04-15'),
    (16, 266, 'Won the championship', '2023-02-05'),
    (17, 267, 'Reached max level in all skills', '2023-01-10'),
    (18, 268, 'Completed all missions', '2023-03-15'),
    (19, 269, 'Found all hidden treasures', '2023-01-25'),
    (20, 270, 'Built the ultimate base', '2023-03-05'),
    (21, 271, 'Discovered all locations', '2023-04-20'),
    (22, 272, 'Defeated all legendary creatures', '2023-02-15'),
    (23, 273, 'Reached the top of the leaderboard', '2023-01-01'),
    (24, 274, 'Completed all challenges', '2023-02-25'),
    (25, 275, 'Reached the final level', '2023-03-10'),
    (26, 276, 'Achieved the highest score', '2023-04-01'),
    (27, 277, 'Found the secret ending', '2023-01-30'),
    (28, 278, 'Unlocked the hidden character', '2023-02-20'),
    (29, 279, 'Reached 50 wins', '2023-03-15');

-- Populate Data into the Reviews table

INSERT INTO Reviews (player_id, game_id, rating, review_content) VALUES
    (1, 251, 5.0, 'This game is amazing!'),
    (2, 252, 4.5, 'Great storyline and gameplay'),
    (3, 253, 4.0, 'Enjoyed the open-world exploration'),
    (4, 254, 4.2, 'Beautiful graphics and immersive world'),
    (5, 255, 4.8, 'Challenging but rewarding gameplay'),
    (6, 256, 4.5, 'A masterpiece of storytelling'),
    (7, 257, 4.3, 'Fun and addictive gameplay'),
    (8, 258, 4.7, 'One of the best games I''ve played'),
    (9, 259, 4.0, 'Solid RPG experience'),
    (10, 260, 4.6, 'Fantastic game, highly recommended'),
    (11, 261, 4.4, 'Great multiplayer experience'),
    (12, 262, 4.3, 'Innovative gameplay mechanics'),
    (13, 263, 4.1, 'A must-play for fans of the genre'),
    (14, 264, 4.9, 'Absolutely love this game!'),
    (15, 265, 4.7, 'Hours of fun and excitement'),
    (16, 266, 4.5, 'Best sports game out there'),
    (17, 267, 4.2, 'Still going strong after all these years'),
    (18, 268, 4.4, 'A classic that never gets old'),
    (19, 269, 4.3, 'Great exploration and discovery'),
    (20, 270, 4.6, 'Addictive gameplay and endless possibilities'),
    (21, 271, 4.8, 'Captivating world and lore'),
    (22, 272, 4.7, 'Epic battles and thrilling adventures'),
    (23, 273, 4.5, 'Highly engaging and immersive'),
    (24, 274, 4.2, 'Solid gameplay and mechanics'),
    (25, 275, 4.6, 'Fantastic game with lots to do'),
    (1, 276, 5.0, 'This Best Game Ever!'),
    (3, 278, 4.0, 'Best Action Game !');



-- Populate Data into the Inventory table

INSERT INTO Inventory (player_id, game_id, item_name, quantity, date_acquired) VALUES
    (1, 251, 'Health Potion', 5, '2023-01-01'),
    (1, 251, 'Mana Potion', 3, '2023-01-05'),
    (1, 251, 'Sword', 1, '2023-01-10'),
    (2, 252, 'Ammo', 100, '2022-11-01'),
    (2, 252, 'Health Kit', 2, '2022-11-05'),
    (2, 252, 'Sniper Rifle', 1, '2022-11-10'),
    (3, 253, 'Bow', 1, '2023-03-01'),
    (3, 253, 'Arrows', 50, '2023-03-05'),
    (3, 253, 'Health Elixir', 3, '2023-03-10'),
    (4, 254, 'Skill Book', 1, '2023-02-01'),
    (4, 254, 'Armor Set', 1, '2023-02-05'),
    (4, 254, 'Legendary Weapon', 1, '2023-02-10'),
    (5, 255, 'Treasure Map', 1, '2022-12-01'),
    (5, 255, 'Artifact', 1, '2022-12-05'),
    (5, 255, 'Rare Item', 1, '2022-12-10'),
    (6, 256, 'Side Quest Item', 1, '2023-03-01'),
    (6, 256, 'Special Weapon', 1, '2023-03-05'),
    (6, 256, 'Rare Armor', 1, '2023-03-10'),
    (7, 257, 'XP Boost', 1, '2023-01-01'),
    (7, 257, 'Gold Coin', 10, '2023-01-05'),
    (7, 257, 'Rare Gem', 1, '2023-01-10'),
    (8, 258, 'Legendary Item', 1, '2022-11-01'),
    (8, 258, 'Epic Armor', 1, '2022-11-05'),
    (8, 258, 'Rare Weapon', 1, '2022-11-10'),
    (9, 259, 'Quest Reward', 1, '2023-04-01'),
    (9, 259, 'Rare Material', 1, '2023-04-05'),
    (9, 259, 'Epic Potion', 1, '2023-04-10'),
    (10, 260, 'Rare Currency', 100, '2023-02-28'),
    (10, 260, 'Epic Resource', 1, '2023-03-01'),
    (10, 260, 'Legendary Ingredient', 1, '2023-03-05'),
    (20, 258, 'Legendary Item', 1, '2022-11-01'),
    (20, 258, 'Epic Armor', 1, '2022-11-05'),
    (21, 258, 'Rare Weapon', 1, '2022-11-10'),
    (21, 259, 'Quest Reward', 1, '2023-04-01'),
    (22, 259, 'Rare Material', 1, '2023-04-05'),
    (23, 259, 'Epic Potion', 1, '2023-04-10'),
    (25, 260, 'Rare Currency', 100, '2023-02-28'),
    (24, 260, 'Epic Resource', 1, '2023-03-01'),
    (27, 260, 'Legendary Ingredient', 1, '2023-03-05');


-- Populate Data into the Friends table

INSERT INTO Friends (player_id1, player_id2, date_added) VALUES
    (1, 2, '2023-01-01'),
    (1, 3, '2023-01-02'),
    (1, 4, '2023-01-03'),
    (1, 5, '2023-01-04'),
    (2, 3, '2023-01-05'),
    (2, 4, '2023-01-06'),
    (2, 5, '2023-01-07'),
    (2, 6, '2023-01-08'),
    (3, 4, '2023-01-09'),
    (3, 5, '2023-01-10'),
    (3, 6, '2023-01-11'),
    (3, 7, '2023-01-12'),
    (4, 5, '2023-01-13'),
    (4, 6, '2023-01-14'),
    (4, 7, '2023-01-15'),
    (4, 8, '2023-01-16'),
    (5, 6, '2023-01-17'),
    (5, 7, '2023-01-18'),
    (5, 8, '2023-01-19'),
    (5, 9, '2023-01-20'),
    (24, 6, '2023-01-14'),
    (22, 7, '2023-01-15'),
    (21, 8, '2023-01-16'),
    (22, 6, '2023-01-17'),
    (20, 7, '2023-01-18'),
    (20, 8, '2023-01-19');

-- Populate Data into the Transactions table

INSERT INTO Transactions (player_id, game_id, transaction_type, amount, date) VALUES
    (1, 251, 'Purchase', 29.99, '2023-01-01'),
    (1, 252, 'Gift', 39.99, '2023-01-02'),
    (2, 253, 'Subscription', 49.99, '2023-01-03'),
    (2, 254, 'In-Game Purchase', 19.99, '2023-01-04'),
    (3, 255, 'DLC Purchase', 9.99, '2023-01-05'),
    (3, 256, 'Microtransaction', 29.99, '2023-01-06'),
    (4, 257, 'Upgrade', 14.99, '2023-01-07'),
    (4, 258, 'Virtual Currency Purchase', 34.99, '2023-01-08'),
    (5, 259, 'Season Pass', 24.99, '2023-01-09'),
    (5, 260, 'Loot Box Purchase', 19.99, '2023-01-10'),
    (6, 261, 'Expansion Pack', 39.99, '2023-01-11'),
    (6, 262, 'In-App Purchase', 29.99, '2023-01-12'),
    (7, 263, 'Cosmetic Item Purchase', 9.99, '2023-01-13'),
    (7, 264, 'Membership', 49.99, '2023-01-14'),
    (8, 265, 'Theme Purchase', 19.99, '2023-01-15'),
    (8, 266, 'Bundle Purchase', 29.99, '2023-01-16'),
    (9, 267, 'Virtual Goods Purchase', 39.99, '2023-01-17'),
    (9, 268, 'Power-Up Purchase', 49.99, '2023-01-18'),
    (10, 269, 'Game Pass', 9.99, '2023-01-19'),
    (10, 270, 'Unlockable Content Purchase', 19.99, '2023-01-20');




-- Populate Data into the PlayerInteractions table

INSERT INTO PlayerInteractions (player_id1, player_id2, interaction_type, interaction_date) VALUES
    (1, 2, 'Chat', '2023-01-01'),
    (1, 3, 'Friend Request', '2023-01-02'),
    (1, 4, 'Gift', '2023-01-03'),
    (1, 5, 'Message', '2023-01-04'),
    (2, 3, 'Chat', '2023-01-05'),
    (2, 4, 'Friend Request', '2023-01-06'),
    (2, 5, 'Gift', '2023-01-07'),
    (2, 6, 'Message', '2023-01-08'),
    (3, 4, 'Chat', '2023-01-09'),
    (3, 5, 'Friend Request', '2023-01-10'),
    (3, 6, 'Gift', '2023-01-11'),
    (3, 7, 'Message', '2023-01-12'),
    (4, 5, 'Chat', '2023-01-13'),
    (4, 6, 'Friend Request', '2023-01-14'),
    (4, 7, 'Gift', '2023-01-15'),
    (4, 8, 'Message', '2023-01-16'),
    (5, 6, 'Chat', '2023-01-17'),
    (5, 7, 'Friend Request', '2023-01-18'),
    (5, 8, 'Gift', '2023-01-19'),
    (5, 9, 'Message', '2023-01-20'),
    (6, 7, 'Chat', '2023-01-21'),
    (6, 8, 'Friend Request', '2023-01-22'),
    (6, 9, 'Gift', '2023-01-23'),
    (6, 10, 'Message', '2023-01-24'),
    (7, 8, 'Chat', '2023-01-25'),
    (7, 9, 'Friend Request', '2023-01-26'),
    (7, 10, 'Gift', '2023-01-27'),
    (7, 11, 'Message', '2023-01-28'),
    (8, 9, 'Chat', '2023-01-29'),
    (8, 10, 'Friend Request', '2023-01-30'),
    (8, 11, 'Gift', '2023-01-31'),
    (8, 12, 'Message', '2023-02-01'),
    (9, 10, 'Chat', '2023-02-02'),
    (9, 11, 'Friend Request', '2023-02-03'),
    (9, 12, 'Gift', '2023-02-04'),
    (9, 13, 'Message', '2023-02-05'),
    (10, 11, 'Chat', '2023-02-06'),
    (10, 12, 'Friend Request', '2023-02-07'),
    (10, 13, 'Gift', '2023-02-08'),
    (10, 14, 'Message', '2023-02-09'),
    (11, 12, 'Chat', '2023-02-10'),
    (11, 13, 'Friend Request', '2023-02-11'),
    (11, 14, 'Gift', '2023-02-12'),
    (11, 15, 'Message', '2023-02-13'),
    (12, 13, 'Chat', '2023-02-14'),
    (12, 14, 'Friend Request', '2023-02-15'),
    (12, 15, 'Gift', '2023-02-16'),
    (12, 16, 'Message', '2023-02-17'),
    (13, 14, 'Chat', '2023-02-18');


-- Populate Data into the Events table

INSERT INTO Events (event_name, description, date, game_id) VALUES
    ('Launch Party', 'Celebrate the launch of the new game with special events and giveaways.', '2023-01-01', 251),
    ('Community Tournament', 'Join the community for a multiplayer tournament with prizes.', '2023-01-05', 252),
    ('Double XP Weekend', 'Earn double experience points for all gameplay this weekend only.', '2023-01-10', 253),
    ('Developer Q&A', 'Ask the developers your burning questions about the game.', '2023-01-15', 254),
    ('Holiday Event', 'Celebrate the holidays with special in-game events and rewards.', '2023-01-20', 255),
    ('New Content Release', 'Discover the latest content update, including new levels and items.', '2023-01-25', 256),
    ('Cosplay Contest', 'Show off your best game-inspired cosplay for a chance to win prizes.', '2023-02-01', 257),
    ('Speedrunning Marathon', 'Compete in a speedrunning marathon and set new records.', '2023-02-05', 258),
    ('Fan Art Showcase', 'Share your fan art for the game and see it featured in-game.', '2023-02-10', 259),
    ('In-Game Concert', 'Attend a virtual concert featuring live performances by popular artists.', '2023-02-15', 260),
    ('Game Anniversary Celebration', 'Celebrate the game`s anniversary with special events and rewards.', '2023-02-20', 261),
    ('Easter Egg Hunt', 'Search for hidden easter eggs in the game for exclusive rewards.', '2023-02-25', 262),
    ('Charity Event', 'Participate in a charity event within the game to support a good cause.', '2023-03-01', 263),
    ('Game Jam', 'Join a game jam and create a game within a limited time frame.', '2023-03-05', 264),
    ('Fan Meetup', 'Meet up with other fans of the game for a fun social gathering.', '2023-03-10', 265),
    ('Virtual Reality Experience', 'Experience the game in virtual reality with a special VR event.', '2023-03-15', 266),
    ('In-Game Theater', 'Watch special screenings of movies and shows within the game.', '2023-03-20', 267),
    ('Developer Livestream', 'Tune in to a livestream with the developers showcasing upcoming features.', '2023-03-25', 268),
    ('Seasonal Event', 'Celebrate the changing seasons with special in-game events and items.', '2023-03-30', 269),
    ('Game Awards Ceremony', 'Attend a virtual awards ceremony honoring the best players and content creators.', '2023-04-01', 270);

