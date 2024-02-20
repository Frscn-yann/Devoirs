#1.
dfanime = read.csv("E:/yfrascone/Programmation Stat/Ficher csv/anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfanime)
#2.
View(dfanime)
#3.
dim(dfanime)
#4.
mean(dfanime$Score)
#5.
sum(dfanime$Vote)
#6.
sd(dfanime$Score)
#7.
quantile(dfanime$Score, 
         probs = seq(from = 0.1, to = 0.9, by = 0.1))
#Filtres
#1.
effecifrating = table(dfanime$Rating)
print(effecifrating)
length(effecifrating)
prop.table(effecifrating)
#2.
extr2 = subset(dfanime, Rating == "R - 17+ (violence & profanity)")
nrow(extr2)
#3.
extr2 = subset(dfanime, 
               Rating == "R - 17+ (violence & profanity)"
               & Ranked >= 8)
nrow(extr2)
