### Assignment 9

# 1)

library(ggplot2)
data("msleep")

head(msleep)

#finding diet type categories
length(unique(msleep$vore)) # There are 5 different diet type categories

## differences between diet groups and sleep hours
boxplot(msleep$sleep_total ~  msleep$vore, ylab = "Diet Type", xlab = "Hours Sleep")


####

# 2) 

#plot() between the natural log of body size and the length of the sleep cycle
plot(msleep$bodywt, msleep$sleep_cycle, 
     xlab="Body Size (g)", ylab = "Sleep Cycle", main = "Body Size vs Sleep Cycle")

## Natural log for body size!!!

## ggplot()
ggplot(data = msleep, aes(x = bodywt, y = sleep_cycle)) +
  geom_point(alpha = 0.1, aes(color=conservation))
