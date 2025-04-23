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
**
*/ 

-- Drop Database if it exists
IF DB_ID('GamingDB') IS NOT NULL
    DROP DATABASE GamingDB;

-- Create Database
CREATE DATABASE GamingDB;

-- Use Database
USE GamingDB;
