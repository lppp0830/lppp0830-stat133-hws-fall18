---
title: "workout 01"
author: "Youngeun Kim"
date: '2018 10 04'
output: github_document
---
# Data Dictionary of NBA-2018

## What is the data about?

This data is about all NBA players in 2017-2018 season.  
It shows each player's information such as one's team, position, experience, salary, rank, age.  
[Main source for this data](https://www.basketball-reference.com)  
[A sample data source of GS Warriors](https://www.basketball-reference.com/teams/GSW/2018.html)

## How many rows?
In this data, there are 477 players, so rows of this data table is 477.

## How many columns?
This data has 38 columns.

## What are the column label?
player, number, team, position, height, weight, birth_date, country, experience, college, salary, rank, age, games, games_started, minutes, field_goals, field_goals_atts, field_goals_perc, points3, points3_atts, points3_perc, points2, points2_atts, points2_perc, effective_field_goal_perc, points1, points1_atts, points1_perc, off_rebounds, def_rebounds, total_rebounds, assists, steals, blocks, turnovers, fouls, points.

* If the column names are abbreviations, what is the full description of each column?

player: first and last names of player
number: number on jersey
team: 3-letter team abbreviation
position: player???s position
height: height in feet-inches
weight: weight in pounds
birth_date: date of birth (???Month day, year???)
country: 2-letter country abbreviation
experience: years of experience in NBA (a value of R means rookie)
college: attended college in USA
salary: player salary in dollars
rank: Rank of player in his team
age: Age of Player at the start of February 1st of that season.
games: Games Played during regular season
sames_started: Games Started
minutes: Minutes Played during regular season
field_goals: Field Goals Made
field_goals_atts: Field Goal Attempts
field_goals_perc: Field Goal Percentage
points3: 3-Point Field Goals
points3_atts: 3-Point Field Goal Attempts
points3_perc: 3-Point Field Percentage
points2: 2-Point Field Goals
points2_atts: 2-Point Field Goal Attempts
points2_perc: 2-Point Field Goal Percentage
effective_field_goal_perc: Effective Field Goal Percentage
points1: Free Throws Made
points1_atts: Free Throw Attempts
points1_perc: Free Throw Percentage
off_rebounds: Offensive Rebounds
def_rebounds: Defensive Rebounds
assists: Assists
steals: Steals
blocks: Blocks
turnovers: Turnovers
fouls: Fouls
points: Total points

* What are the units of measurment

Height(inches-feet)
Weight(pounds)
Experience(years)  
Salary(dollars)  
Age(years)  
MIN(minutes) 
perc(percentages)
  
[More info about measurement and abbreviations of basketball statistics](https://en.wikipedia.org/wiki/Basketball_statistics)

* How missing values are codified?

Yes, there are missing value from data nba2018.csv. missing values are shown as "NA".


