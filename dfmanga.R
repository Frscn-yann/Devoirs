#1.
dfmanga = read.csv("E:/yfrascone/Programmation Stat/Ficher csv/manga.csv", header = TRUE, sep = ",", dec = ".")
class(dfmanga)
#2.
View(dfmanga)
#3.
dim(dfmanga)
#4.
mean(dfmanga$Score)
#5.
sum(dfmanga$Vote)
#6.
sd(dfmanga$Score)
#7.
quantile(dfmanga$Score, 
         probs = seq(from = 0.1, to = 0.9, by = 0.1))
