getwd() #Permet de connaître le répertoire de travail actuel."

setwd("L:/BUT/SD/Promo 2023/yfrascone/Programmation Stat/Ficher csv/dataset")
"Permet de changer le répertoire de travail par un nouveau"
getwd()

kart_chassis = read.csv("bodies_karts.csv", header = TRUE, dec = ",", sep = ";")
perso = read.csv("drivers.csv", header = TRUE, dec = ",", sep = ";")
planeurs = read.csv("gliders.csv", header = TRUE, dec = ".", sep = "|")
pneu = read.csv("tires.csv", header = TRUE, dec = ",", sep = "\t") #Le \t c'est TAB, on le met si les séparateurs sont fait avec des tab

dim(kart_chassis)
dim(perso)
dim(planeurs)  #dim sert a connaître le nombre de ligne et de colonnes dans un dataset
dim(pneu)

summary(kart_chassis) #summary sert à faire un résumé d'un dataset
summary(perso)
summary(planeurs)
summary(pneu)

plot(x = pneu$Weight, 
     y = pneu$Acceleration, 
     main = "Drivers : Weight / Acceleration")
#+ +le pneu est lourd - il a d'accélération et inversement
#+ donc les deux variables soient corrélées négartivement
#+ #Il y a autant de points mais ils sont superposés car certains drivers ont les mêmes statistiques

correlation = cor(pneu$Weight, pneu$Acceleration , method = "pearson")
print(correlation)
#correlation <- cor(x = vecteur1, y = vecteur2, method = "spearman")
#x : le premier vecteur, y : le deuxième vecteur, method : la méthode de calcul de la corrélation (par défaut "pearson")

covXY = cov(x = perso$Weight,
            y = perso$Acceleration)
sX = sd(perso$Weight) #sd est pour calculer la variance
sY = sd(perso$Acceleration)
print(covXY/(sX*sY))
