library(ggplot2)
data("mtcars")
View(mtcars)
p <- ggplot(mpg, aes(class, hwy))
p + geom_boxplot()

p + geom_boxplot() + geom_jitter(width = 1)

p + geom_boxplot(notch = TRUE)

library(gridExtra)
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_violin() -> grafico01
p + geom_boxplot() -> p2

grid.arrange(grafico01, p2, ncol=2)


install.packages("sinaplot")

library(sinaplot)

x <- c(rnorm(200, 4, 1), rnorm(200, 5, 2), rnorm(200, 6, 1.5))
groups <- c(rep("Cond1", 200), rep("Cond2", 200), rep("Cond3", 200))

sinaplot(x, groups)


?tufte_handout
