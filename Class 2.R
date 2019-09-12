#How to import data, check how with the questionmark

?read.table

df <- read.table("NEW_CogSciPersonalityTest2019.csv", header = TRUE, sep = ",")

#Functions
#install.packages("packagename") - just once, its on the computer now 
#library(packagename) - every time you work on a new file, so it knows that you want to use functions from it 

#Installing "pacman"

#install.packages("pacman") now i have installed it, don't wanna run it again, hence the#

#Run library  
#library(pacman)

#loads all the packages you need and install them. Package Manager. You can do this every time you need packages. 
pacman::p_load(tidyverse)

#filter for shoe size 
shoes40 <- filter(df,shoesize==40)

#filter by several arguments 
male_lefthanded <- filter(df, gender == "male" & handedness == "Left-handed") 

#Exerise 1: filter()

#1
shoes39plus <- filter(df,shoesize >= 39)
View(shoes39plus)

#2
levels(df$touch_floor)
touchfloor <- filter(df,touch_floor == "Yes" | touch_floor == "Yes, of course!!")

