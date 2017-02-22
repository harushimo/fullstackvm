-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Create tournament database
create database tournament;
\c tournament;

-- Drop Database if EXISTS
drop database IF EXISTS tournament;
-- Drop Tables if they exist
drop table IF EXISTS Players;
drop table IF EXISTS Matches;

-- Creating Tables
create table Players (
  players_id serial PRIMARY KEY,
  name text
  win int default 0
  matches int default 0
);

create table Matches (
  match_id serial
  winner serial references Players(players_id)
  loser serial references Players(players_id)
);
