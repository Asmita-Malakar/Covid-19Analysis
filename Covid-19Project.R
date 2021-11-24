rm(list=ls())
library(Hmisc)
data <- read.csv("C:/Users/arind/Downloads/COVID19_line_list_data.csv")
describe(data) #Hmisc package

data$death_practice <- as.integer(data$death != 0)

unique(data$death_practice)

sum(data$death_practice)/nrow(data) #average death rate
#Assigning values to dead and alive variables
dead = subset(data, death_practice == 1)
alive = subset(data, death_practice == 0)
mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

t.test(alive$age, dead$age, alternative = "two.sided", confindence = .95)

# Valid Statement -> Covid-19 victims are a lot older

