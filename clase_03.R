library(ggplot2)
data("diamonds")

View(diamonds)

ggplot(diamonds, aes(carat)) + geom_histogram(bins = 100)
ggplot(diamonds, aes(carat)) + geom_histogram(binwidth = 0.1)
ggplot(diamonds, aes(price, fill = cut)) + geom_histogram(binwidth = 10)
ggplot(diamonds, aes(depth, fill = cut)) + geom_histogram(bins = 10)


ggplot(diamonds, aes(carat)) + geom_density() 
ggplot(diamonds, aes(carat)) + geom_density(adjust = 1/5)
ggplot(diamonds, aes(depth, fill = cut, colour = cut)) +
  geom_density(alpha = 0.1) +
  xlim(55, 70)
ggplot(diamonds, aes(carat, fill = cut)) +
  geom_density(position = "stack")
ggplot(diamonds, aes(carat, ..count.., fill = cut)) +
  geom_density(position = "fill")
