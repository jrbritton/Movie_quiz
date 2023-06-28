library(tidyverse)
library(lme4)

# Set your working directory

setwd("C:\\Users\\herts\\OneDrive\\Desktop\\Rworkspace\\Other\\Movie_quiz")


# Import the .csv
movieQuizData <- read.csv("data_1990sMovieQuiz.csv")
#View(movieQuizData)

# Use ggplot to make a simple graph and see what the data looks like

ggplot(data=movieQuizData, aes(x=Age, y=Score, colour=Movies)) + 
  geom_point() 


# First model

ageModel = lm(Score ~ Age, data = movieQuizData)
summary(ageModel, cor = T)


############################################


# Better model
# This code centres the variable of age

ageModeldata = cbind(log10(movieQuizData[,24]),movieQuizData[,-24])
colnames(ageModeldata)[1]="Age"

ageModel2 = lm(Score ~ Age, data = ageModeldata)
summary(ageModel2, cor = T)
View(ageModeldata)


############################################

# Better still

ageModel3 = lm(Score ~ Age + Gender + Movies + Lang, data = ageModeldata)
summary(ageModel3, cor = T)


############################################

# Maybe best

ageModel4 = lm(Score ~ Age + Gender + Movies + Lang2, data = ageModeldata)
summary(ageModel4, cor = T)


# Another plot
ggplot(data=movieQuizData, aes(x=Movies, y=Score, colour=Gender)) + 
  geom_point() +
  stat_smooth(method = "lm", col = "red")

