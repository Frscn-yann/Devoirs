dffao =  read.csv(file = "L:/BUT/SD/Promo 2023/yfrascone/Programmation Stat/TP/Tp2/Données/fao.csv", 
                  header = TRUE, 
                  sep = ";", 
                  dec = ",")
View(dffao) #186 pays sont présent dans ce dataset

summary(dffao) #Les valeurs manquantes sont pris en compte avec des NA
#Par exemple dans Export_viande il y a 24 NA 

mean(dffao$Dispo_alim) #la valeur moyenne est de 2914.312

sum(dffao$Population, na.rm = TRUE) #Le na.rm sert a retirer les NA dans la colonne
#La valeur est de 7592664054

sd(dffao$Export_viande, na.rm = TRUE)
#La valeur est de 1088.94

sd(dffao$Import_viande, na.rm = TRUE)
#La valeur est de 1179.726

median(dffao$Prod_viande, na.rm = TRUE)
#La valeur est de 295

quantile(dffao$Dispo_alim, probs = c(0.25,0.5,0.75))
#on doit concatener les vecteurs avec c() pour pouvoir calculer les quartiles

quantile(dffao$Import_viande,probs = seq(0,1,0.01))
#probs est normalement pour les quantiles mais avec une sequence ci-dessous permet de calculer les centiles.
#seq(from,to,by)

flop5 = head(dffao[order(dffao$Population),],5)
View(flop5)

top5 = head(dffao[order(dffao$Population, decreasing = TRUE), ],5,)
View(top5)

top5viande = head(dffao[order(dffao$Prod_viande, decreasing = TRUE), ],5,)
View(top5viande)

top5impviande = head(dffao[order(dffao$Import_viande, decreasing = TRUE), ],5,)
View(top5impviande)
