-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Create tournament database

-- Drop Database if EXISTS
drop database IF EXISTS tournament;
--Create the tournament
create database tournament;
\c tournament;

-- Creating Tables
create table Players (
  players_id serial PRIMARY KEY,
  name text
);

create table Matches (
  match_id serial,
  winner int references Players(players_id) NOT NULL,
  loser int references Players(players_id) NOT NULL
);

-- Creating views
create view player_Standings as
  select Players.players_id, Players.name,
  (select count(Matches.winner) from matches where Players.players_id = Matches.winner) as wins,
  (select count(Matches.match_id) from matches where Player.players_id = Matches.loser or Players.players_id = Matches.winner) as Matches
  from Players
  order by wins desc;



-- Drop Tables if they exist
-- drop table IF EXISTS Players;
-- drop table IF EXISTS Matches;
