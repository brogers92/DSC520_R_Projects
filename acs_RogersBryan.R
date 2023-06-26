# Assignment: ACS Data
# Name: Bryan Rogers
# Date: 2023-06-25

install.packages("ggplot2")
install.packages("tidyverse")
library(tidyverse)
library(ggplot2)
theme_set(theme_minimal())

getwd()
setwd("/Users/bryansmacbookpro/")

acs <- read.csv(acs_14_1yr_s0201.csv, TRUE,)
class(aes)
## 1. What are the elements in your data (including the categories and data types)?

## The elements in the data include: 
## 'id' - The ID associated with the county - char vector
## 'id2' - A second ID associated with the county - int vector
## 'Geography' - The name of state and county - char vector
## 'PopGroupID' - The ID associated with the population group - int vector
## 'POPGROUP.display-label' - The display label of the population group - char vector
## 'RacesReported' - The number of races reported - int vector
## 'HSDegree' - The percentage of people in the county with a HS degree - num vector
## 'BachDegree' - The percentage of people in the county with a Bachleor's degree - num vector

## 2. Please provide the output from the following functions: str(); nrow(); ncol()

str(acs)
norw(acs)
ncol(acs)

## 3. Create a Histogram of the HSDegree variable using the ggplot2 package.
## Set a bin size for the Histogram.
## Include a Title and appropriate X/Y axis labels on your Histogram Plot.

ggplot(acs, aes(x = HSDegree)) + geom_histogram(bins = 8, fill = "green", color = "black") + ggtitle("HSDegree Histogram") + xlab("HSDegree") + ylab("Frequency")


