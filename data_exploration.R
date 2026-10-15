library(dplyr)
library(ggplot2)

raw <- read.csv("listings.csv")

dim(raw)        # number of rows and columns
names(raw)      # all 90 column names
head(raw[, c("room_type", "price", "accommodates", "bedrooms")])  # first 6 rows

str(raw$price)            # shows price is text, e.g. "$140.00"
sum(raw$price == "")      # how many listings have no price (3,112)

table(raw$room_type)      # count of each room type
summary(raw$accommodates) # min, quartiles, mean, max of guests

#try
