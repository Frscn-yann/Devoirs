#Exercice_1
#1
setwd("L:/BUT/SD/Promo 2023/yfrascone/Programmation Stat/TD/TD3") # CTRL + SHIFT + H
library(readxl)
pokemon = read_excel(path = "pokemon.xlsx", 
                   sheet = "pokemon")

#2
dim(pokemon)
ncol(pokemon)
nrow(pokemon)

#3
summary(pokemon)

#4
pokemon$generation = as.factor(pokemon$generation)
pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$type = as.factor(pokemon$type)

#5
summary(pokemon)

#Exerxice_2
#1
med = median(pokemon$attack)
pokemon$attack_group = ifelse(test = pokemon$attack > med, 
                              yes = "attack+",
                              no = "attack-")
pokemon$attack_group = as.factor(pokemon$attack_group)
summary(pokemon$attack_group)

#2
pokemon$water_fire = ifelse(test = pokemon$type %in% c("water", "fire"), 
                            yes = "yes",
                            no = "no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)
#3
q3_attack = quantile(pokemon$attack, probs = 0.75)
q3_defense = quantile(pokemon$defense, probs = 0.75)
q3_speed = quantile(pokemon$speed, probs = 0.75)
pokemon$best = ifelse(test = pokemon$attack > q3_attack &
                      pokemon$defense > q3_defense &
                      pokemon$speed > q3_speed, 
                      yes = "yes",
                      no = "no")
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)
#La fonction is.na()
#1
req = subset(pokemon, is.na(weight_kg))
View(req)

#2
req2 = subset(pokemon , !is.na(weight_kg))
View(req2)
#3
med_weight_kg = median(pokemon$weight_kg, na.rm = TRUE)
pokemon$weight_kgNa = ifelse(is.na(pokemon$weight_kg) , 
                             med_weight_kg ,
                             pokemon$weight_kg)

med_height_m = median(pokemon$height_m, na.rm = TRUE)
pokemon$height_mNA = ifelse(is.na(pokemon$height_m) , 
                            med_height_m ,
                            pokemon$height_m)