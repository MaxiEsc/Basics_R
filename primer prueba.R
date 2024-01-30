
install.packages("remotes")
remotes::install_github("allisonhorst/palmerpenguins")

library("palmerpenguins")
summary(penguins)
View(penguins)

# Loading library
library(ggplot2)

# Create a data frame
dataframe <- data.frame(x=c(4, 7, 2, 19, 10, 11, 12, 13),
                        y=c(18, 37, 47, 42, 45, 54, 68, 76))

# Create a scatterplot of x vs. y
ggplot(dataframe, aes(x=x, y=y)) + geom_point()
