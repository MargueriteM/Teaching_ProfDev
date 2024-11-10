######################################################
# R script to graph Minute Paper results from class #
# written by: M. Mauritz.                           #
# 9 Nov 2024                                        #
######################################################


# load libraries
library(dplyr)
library(ggplot2)
library(readxl)


# import data
# set wd
setwd("~/Library/CloudStorage/OneDrive-UniversityofTexasatElPaso/Teaching/ProfessionalDevelopment_BIOL_5208_6208/2024_Fall/Assignment_ProfDevMaterials/DataManagement")
# import data
class.dat <- read_xlsx("ClassSummary.xlsx")

# set order of Program to : R, Python, GitHub
class.dat <- class.dat %>%
  mutate(Program = factor(Program, levels=c("R","Python","GitHub")))

# graph program results
ggplot(class.dat, aes(factor(Level), Proportion))+
  geom_col()+
  labs(x="Level")+
  facet_grid(.~Program)+
  theme_bw()+
  theme(text=element_text(size=20))
