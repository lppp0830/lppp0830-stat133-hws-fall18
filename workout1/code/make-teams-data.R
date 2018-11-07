
# ===================================================================
# Title: workout1 - data preparation stage
# Description:
#   This script performs cleaning tasks and transformations on 
#   various columns of the raw data file.
# Input(s): data file 'nba2018.csv'
# Output(s): data file 'nba2018-teams.csv', 'efficiency-summary.txt', 'teams-summary.txt'
# Author: Youngeun Kim
# Date: 10-04-2018
# ===================================================================

library(dplyr)

dat <- read.csv("../data/nba2018.csv", stringsAsFactors = FALSE)



# experience should be of type character because of the presence of the R values that
# indicate rookie players. Replace all the occurrences of "R" with 0, and then convert
# the entire column into integers.
dat$experience[dat$experience == "R"] <- "0"
dat$experience <- as.integer(dat$experience)

str(dat)
  



# salary is originally measured in dollars. Transform salary so that you have salaries
# in millions: e.g. 1000000 should be converted to 1
dat$salary <- dat$salary/1000000



# position should be a factor with 5 levels: 'C', 'PF', 'PG', 'SF', 'SG'. Relabel
# these factors using more descriptive names (see below):
dat$position <- factor(dat$position, levels = c('C', 'PF','PG', 'SF', 'SG'), labels = c('center', 'power_fwd', 'point_guard', 'small_fwd', 'shoot_guard'))




#Adding new variables
dat <- mutate(dat, 
              missed_fg = field_goals_atts - field_goals, 
              missed_ft = points1_atts - points1, 
              rebounds = off_rebounds + def_rebounds,
              efficiency = (points + rebounds + assists + steals + blocks - missed_fg - missed_ft - turnovers) / games)




#sink txt file in output
sink(file = '../output/efficiency-summary.txt')
summary(dat$efficiency)

teams <- summarise(
  group_by(dat, team),
  experience = round(sum(experience), 2),
  salary = round(sum(salary), 2),
  points3 = sum(points3),
  points2 = sum(points2),
  points1 = sum(points1),
  points = sum(points),
  off_rebounds = sum(off_rebounds),
  def_rebounds = sum(def_rebounds),
  assists = sum(assists),
  steals = sum(steals),
  blocks = sum(blocks),
  turnovers = sum(turnovers),
  fouls = sum(fouls),
  efficiency = sum(efficiency)
)



sink(file = '../output/teams-summary.txt')
summary(teams$efficiency)  

#create new csv file in data
write.csv(teams, "../data/nba2018-teams.csv", row.names = FALSE)


