#1.
dfmanga = read.csv("L:/BUT/SD/Promo 2023/yfrascone/Programmation Stat/Ficher csv/manga.csv", 
                   header = TRUE, 
                   sep = ",", 
                   dec = ".")
class(dfmanga)
#2.
View(dfmanga)
#3.
dim(dfmanga)
#4.
mean(dfmanga$Score)
mean(dfanime$Score)
