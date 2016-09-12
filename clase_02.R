attach(mtcars)
plot(wt, mpg)
abline(lm(mpg~wt), col="red")

library(ggplot2)
p <- ggplot(mtcars, aes(wt, mpg))
p + geom_point()
p + geom_point(aes(colour = factor(cyl)))
p + geom_point(aes(colour = factor(cyl))) + geom_smooth(method = "lm", se = FALSE)

lm(mpg~wt)

# Documentación del paquete ggplot2 http://docs.ggplot2.org/current/
