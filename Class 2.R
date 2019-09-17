#How to import data, check how with the questionmark

?read.table

df <- read.table("NEW_CogSciPersonalityTest2019.csv", header = TRUE, sep = ",")

#Functions
#install.packages("packagename") - just once, its on the computer now 
#library(packagename) - every time you work on a new file, so it knows that you want to use functions from it 

#Installing "pacman"

#install.packages("pacman") now i have installed it, don't wanna run it again, hence the#

#Run library  
library(pacman)

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

#3
mean(df$breath_hold)
breath_hold_good <- filter(df, breath_hold > mean(df$breath_hold))

#4
ballo0n1360 <- filter(df, balloon_balance > 13, balloon_balance < 60)

#5
superperson <- filter(df, shoesize >= 39, touch_floor == "Yes" | touch_floor == "Yes, of course!!", breath_hold > mean(df$breath_hold), balloon_balance > 13, balloon_balance < 60)

#Exercise 2

#1
slow_tonguetwist <- arrange(df, tongue_twist)

#2
rombergtask_best <- arrange(df,desc(romberg_open), desc(romberg_closed))


#Exercise 3

#1
df_new <- select(df,"bad_choices", "bad_choices")

#2
vars <-  c("name", "shoesize", "touch_floor")
df_new2 <- select(df, vars) 

#3
df_new3 <- select(df, "gender", "shoesize", everything())
