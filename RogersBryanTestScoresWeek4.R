# Assignment: "Test Scores"
# Name: Bryan Rogers
# Date: 07-01-2023

install.packages("ggplot2")
library(ggplot2)
library(readr)
scores <- read.csv("scores.csv", header = TRUE, sep = ",")
scores

# 1. What are the observational units in this study?
## The observational units in this study are the students taking the course

# 2. Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?
## The variables mentioned in the narrative paragraph:
## Section type - Categorical 
## Course grade - Categorical 
## Total points - Quantitative 

# 3. Variables to hold subsets of data for both "Regular Section" and "Sports Section"

regular_section <- subset(scores, Section == "Regular")
regular_section

sports_section <- subset(scores, Section == "Sports")
sports_section


# 4. Use the Plot function to plot each Sections scores and the number of students achieving that score.

# Count the number of students in each section
regular_counts <- table(regular_section$Count)
sports_counts <- table(sports_section$Count)

# Plot the counts
plot(data = scores, aes(x = regular_section, y = regular_counts)) + geom_point()

plot(data = scores, aes(x = sports_section, y = sports_counts)) + geom_point()




