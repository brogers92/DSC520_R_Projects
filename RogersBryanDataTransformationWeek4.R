# Assignment: Data Transformation Week 4
# Name: Bryan Rogers
# Date: 7-2-23

library(readr)
acs_14_1yr_s0201 <- read_csv("acs-14-1yr-s0201.csv")
(acs_14_1yr_s0201)

modified_id2 <- apply(acs_14_1yr_s0201$Id2, MARGIN = 1, FUN = function(x) x * 2)
modified_id2

HSDegree_avg <- aggregate(acs_14_1yr_s0201$HSDegree, by = list(acs_14_1yr_s0201$Geography), FUN = mean)
HSDegree_avg

install.packages("dplyr")
library(dplyr)

modified_HSDegree <- ddply(acs_14_1yr_s0201, "HSDegree", transform, value = value * 2)
modified_HSDegree
