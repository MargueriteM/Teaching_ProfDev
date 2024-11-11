######################################################
# R script to work with Palmer Penguin data.        #
# written by: M. Mauritz.                           #
# 9 Nov 2024                                        #
######################################################

# Data Source:
# palmerpenguins
# https://allisonhorst.github.io/palmerpenguins/
# to install in R: install.packages("palmerpenguins")


# load libraries
library(palmerpenguins)
library(tidyverse)

# load data
data(package = 'palmerpenguins')

str(penguins)
str(penguins_raw)

# create working datasets for class discussion
dat.field <- penguins_raw %>%
  select(studyName, `Sample Number`,Species,Region,Island,Stage,`Individual ID`,`Clutch Completion`,`Date Egg`,`Culmen Length (mm)`,
         `Culmen Depth (mm)`, `Flipper Length (mm)`, `Body Mass (g)`,Comments)

dat.lab.sex <- penguins_raw %>%
  select(studyName,`Individual ID`,`Sex`)

dat.lab.iso <- penguins_raw %>%
  select(studyName,`Individual ID`,`Delta 15 N (o/oo)`,`Delta 13 C (o/oo)`)

    