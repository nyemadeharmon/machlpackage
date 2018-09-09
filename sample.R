#Data Sample for Github
#load data sat into r

read.csv("avocado.csv")
avocado <- read.csv("avocado.csv")
install.packages("ggplot2")
Library("ggplot2")

# pull out year from Date column and add it in as a new column

year <- format(as.Date(avocado$Date, format="%Y-%m-%d"),"%Y")

# Before inserting the year column make sure that the number match. SHould return TRUE

(length(year) == nrow(avocado))

#Insert new year row. We'll just replace an existing column that holds counters of each rows

avocado$X=year

#plot a graph
ggplot(avocado, aes(AveragePrice, Total.Volume, color = year)) + geom_point()

