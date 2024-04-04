#Exercice 1
#1.
velov =  read.csv(file = "L:/BUT/SD/Promo 2023/yfrascone/Programmation Stat/TD/TD4/velov.csv", 
         sep = ";", dec = "-" )

#2.
summary(velov)

#3.
velov$status = as.factor(velov$status)
velov$CodePostal = as.factor(velov$CodePostal)

#4.
velov$bornes = ifelse(velov$capacity != (velov$bikes + velov$stands), "KO", "OK")
table(velov$bornes)

#Exercice 2
#1.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity")

#2.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity",
     breaks = 6)
#3.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity",
     breaks = 6,
     col = "red")
#4.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity",
     breaks = 6,
     col = "red",
     xlab = "Capacity")
#5.
abline(h = 100 ,col = "blue", lty = 2 )
#6.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity",
     probability = TRUE,
     col = "red",
     xlab = "Capacity")
#7.
lines(density(velov$capacity),
      lty = 2,
      lwd = 2,
      col = "blue")
#8.
hist(velov$capacity, 
     main = "Histogramme de la valariable capacity",
     probability = TRUE,
     col = "red",
     xlab = "Capacity",
     ylim = c(0,0.08))
lines(density(velov$capacity),
      lty = 2,
      lwd = 2,
      col = "blue")
#Exercice 3
#1.
boxplot(x = velov$capacity, 
        main = "Boxplot de \n la capacité des stations")
#2.
boxplot(x = velov$capacity, 
        main = "Boxplot de \n la capacité des stations",
        horizontal = TRUE)
#3.
boxplot(x = velov$capacity, 
        main = "Boxplot de \n la capacité des stations",
        horizontal = FALSE,
        outline = FALSE)
#4.
moy = mean(velov$capacity)
points(moy, pch = 15,
       col = "red",
       cex = 2)
#5.
par(mfrow=c(1,2)) #fenêtre sur 1 ligne et 2 colonnes
#7ème
df7 = subset(velov, CodePostal == "69007")
boxplot(x = df7$bikes, 
        main = "Boxplot nb vélos \n 69007",
        ylim = c(0,40))
#8ème
df8 = subset(velov, CodePostal == "69008")
boxplot(x = df8$bikes, 
        main = "Boxplot nb vélos \n 69008",
        ylim = c(0,40))
#6.
par(mfrow=c(1,1)) #fenêtre sur 1 ligne et 1 colonne
# Tracer le graphique boxplot
boxplot(formula = bikes ~ bonus,
        data = velov, 
        main = "Dispo vélos vs Stations Bonus")
#7.
# Calculer les moyennes de chaque groupe
means <- tapply(X = velov$bikes, 
                INDEX = velov$bonus, 
                FUN = function(X) mean(X))
print(means)
# Ajouter les moyennes de chaque groupe au graphique
points(means, col = "red", pch = 19)
#Exercice 4
#1.
effectif = table(velov$bonus)
barplot(height = effectif,
        main = "Répartition du nombre \n de station bonus")
#2.
barplot(height = effectif,
        main = "Répartition du nombre \n de station bonus",
        horiz = TRUE)
#3.
frequence = prop.table(effectif)
barplot(height = frequence,
        main = "Répartition en % du nombre \n de station bonus",
        horiz = TRUE)
#4.
effectif = table(velov$banking, velov$bonus)
print(effectif)
barplot(height = effectif,
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?")
#On remarque qu'on ne sait pas distinguer les deux modalités car il n'y a pas de légende.



#test
# Librairies nécessaires
library(leaflet)
library(dplyr)
library(ggplot2)

# Créer une carte Leaflet
maCarte <- leaflet(velov) %>% 
  addTiles() %>% 
  addMarkers(~velov$position_longitude, 
             ~velov$position_latitude, 
             popup = ~address)

# Afficher la carte
maCarte
