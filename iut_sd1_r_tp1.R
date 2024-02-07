#Exercice1.
#1.
iris
class(iris)
#2.
View(iris)
#3.
nrow(iris)
#4.
ncol(iris)
#5.
colnames(iris)
#6.
summary(iris)
#7.
iris[ , c("Sepal.Length","Species")]
#9.
iris[c(100,103,105), ]
iris[50:100, ]
#11.
mean(iris$Sepal.Length)
#12.
median(iris$Sepal.Width)
#13.
sd(iris$Petal.Length)
#14.
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by = 0.1))

