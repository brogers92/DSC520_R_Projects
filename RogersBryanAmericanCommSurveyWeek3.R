# Assignment: American Community Survey Exercise 
# Name: Bryan Rogers
# Date: 2023-06-25

install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)
library(tidyverse)
theme_set(theme_minimal())

library(readr)
acs_14_1yr_s0201 <- read_csv("acs-14-1yr-s0201.csv")
acs_14_1yr_s0201

# 1. What are the elements in your data (including the categories and data types)?

## The elements in the data include: 
## 'id' - The ID associated with the county - char vector
## 'id2' - A second ID associated with the county - int vector
## 'Geography' - The name of state and county - char vector
## 'PopGroupID' - The ID associated with the population group - int vector
## 'POPGROUP.display-label' - The display label of the population group - char vector
## 'RacesReported' - The number of races reported - int vector
## 'HSDegree' - The percentage of people in the county with a HS degree - num vector
## 'BachDegree' - The percentage of people in the county with a Bachleor's degree - num vector

# 2. Please provide the output from the following functions: str(); nrow(); ncol()

str(acs_14_1yr_s0201)
nrow(acs_14_1yr_s0201)
ncol(acs_14_1yr_s0201)

# 3. Create a Histogram of the HSDegree variable using the ggplot2 package.
## Set a bin size for the Histogram.
## Include a Title and appropriate X/Y axis labels on your Histogram Plot.

ggplot(acs_14_1yr_s0201, aes(x = HSDegree)) + geom_histogram(bins = 8, fill = "green", color = "black") + ggtitle("HSDegree Histogram") + xlab("HSDegree") + ylab("Frequency")

# 4. Answer the following questions based on the Histogram produced:
## 1. Based on what you see in this histogram, is the data distribution unimodal?
##      Yes, based on the one peak and the distribution, I would say this is a unimodal histogram. 
## 2. Is it approximately symmetrical?
##      No, it is not approximately symmetrical. 
## 3. Is it approximately bell-shaped?
##      No, it is not approximately bell-shaped.
## 4. Is it approximately normal?
##      No, it is not approximately normal.
## 5. If not normal, is the distribution skewed? If so, in which direction?
##      Being that it is not normal, the distribution is skewed to the right 
##.     making it a positive distribution.
## 6. Include a normal curve to the Histogram that you plotted.
##
## 7. Explain whether a normal distribution can accurately be used as a model
##.   for this data.
##        Since this data is positively skewed, no a normal distribution can be 
##.       used as a model. The thicker tails may indicate that the data is not
##.       apporx. normal 

# 5. Create a Probability Plot of the HSDegree variable

qqnorm(acs_14_1yr_s0201$HSDegree)
qqline(acs_14_1yr_s0201$HSDegree)

# 6. Answer the following questions based on the Probability Plot:
##   1. Based on what you see in this probability plot, 
##      is the distribution approximately normal? Explain how you know.
##        Since the points of the line follow a straight line w/o 
##        significant deviations, then I would say that the distribution is normal
##   2. If not normal, is the distribution skewed? 
##      If so, in which direction? Explain how you know.
##        Since I believe this has normal distribution, it is not skewed in any
##        particular direction 

# 7. Now that you have looked at this data visually for normality,
##   you will now quantify normality with numbers using the stat.desc() function. 
##   Include a screen capture of the results produced

install.packages("psych")
library(psych)
stat.desc(acs_14_1yr_s0201)

## I could not figure out how to get stat.desc to work at all. 

# 8. In several sentences provide an explanation of the result produced for 
## skew, kurtosis, and z-scores. In addition, explain how a change in the 
## sample size may change your explanation?

## I cannot provide an explanation of the results produced due to not being 
## able to figure out stat.desc. I can give a brief overview of skew, kurtosis, 
## and z-scores in general. Skewness is the measure of asymmetry in the
## distribution of the results of a variable and the direction of the skew is 
## either positive or negative based on the left or right direction of the tail
## Kurtosis is the measure of the tail of the distribution and it how you can 
## wind up with outliers in your results. Z-Score is the number of 
## standard deviations the value of a certian measure is from the mean.  






