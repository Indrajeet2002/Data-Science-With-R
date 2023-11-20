# K means clustering with iris dataset
library(ggplot2)
km <- kmeans(iris[,3:4], centers = 3)
km
ggplot(data = iris) + geom_point(aes(x=Petal.Width, y = Petal.Length))
ggplot(data = iris) + geom_point(aes(x=Petal.Width, y = Petal.Length)) + geom_point(as.data.frame(km$centers), mapping = aes(x=Petal.Width, y = Petal.Length, color = "red"))
ggplot(data=iris) + geom_point(aes(x=Petal.Width, y=Petal.Length)) + geom_point(as.data.frame(km$centers), mapping=aes(x=Petal.Width, y=Petal.Length, color = "red", size=5))
