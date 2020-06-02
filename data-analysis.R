library("caret")
library("tidyverse")
library("stringr")
setwd("C:/Users/tyep/Desktop/ml-10M100K")
#dl <- tempfile()
#download.file("http://files.grouplens.org/datasets/movielens/ml-10m.zip", dl)

ratings_dat <- read.table(text = gsub("::", "\t", readLines("ratings.dat")))
colnames(ratings_dat) <- c("UserID","MovieID","Rating","Timestamp")
ratings_df <- as.data.frame(ratings_dat)

movies_dat <- str_split_fixed(readLines("movies.dat"),"::",3)
colnames(movies_dat) <- c("MovieID","Title","Genres")
movies_df <- as.data.frame(movies_dat)

head(movies_df)
head(ratings_df)
  
