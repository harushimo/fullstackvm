-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Drop Tables if they exist
DROP TABLE IF EXISTS Players;
DROP TABLE IF EXISTS Matches;

-- Creating Tables
create table Players (
  players_id serial PRIMARY KEY,
  name text
);

create table Matches (
  match_id serial
  winner_id serial references Players(players_id)
  loser_id serial references Players(players_id)
);
