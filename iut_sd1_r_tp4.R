#Exercice 1
#1.
salaire_net_cadre = function(salaire_brut) {
  salaire_net_avant_impot = salaire_brut * 0.75
  return(salaire_net_avant_impot) }
salaire_net_cadre(salaire_brut = 3000)

#2.
salaire_net_cadre = function(salaire_brut = 2500) {
        salaire_net_avant_impot = salaire_brut * 0.75
        return(salaire_net_avant_impot) }
salaire_net_cadre()

#3.
salaire_net_cadre = function(salaire_brut = 2500,temps_travail = 1) {
  salaire_net_avant_impot = salaire_brut * 0.75 * temps_travail
  return(salaire_net_avant_impot) 
}
salaire_net_cadre(salaire_brut = 3000,
                  temps_travail = 0.8)

#4.
salaire_net_cadre = function(salaire_brut = 2500,temps_travail = 1) {
  if(!is.numeric(salaire_brut)) {
    return("Erreur valeur non numérique" )
  }
  salaire_net_avant_impot = salaire_brut * 0.75 * temps_travail
  return(salaire_net_avant_impot) 
}
salaire_net_cadre(salaire_brut = "2000€",
                  temps_travail = 0.8)

#5.
salaire_net_cadre = function(salaire_brut = 2500,temps_travail = 1) {
  if(!is.numeric(salaire_brut)) {
    return("Erreur valeur non numérique" )
  }
  
  if(!is.numeric(temps_travail)) {
    return("le temps de travail doit être une valeur numérique")
  }
  
  if((temps_travail > 1) | (temps_travail < 0)) {
    return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
  }
  
  salaire_net_avant_impot = salaire_brut * 0.75 * temps_travail
  return(salaire_net_avant_impot) 
}
salaire_net_cadre(salaire_brut = 2000, temps_travail = "100%")
salaire_net_cadre(salaire_brut = 2000, temps_travail = 0.8)
salaire_net_cadre(salaire_brut = 2000, temps_travail = 100)

#Exercice 2
#1.
resultat = 0
for (element in c(1,2,3,4,5)) {
  resultat = resultat + element
  print(paste("le resultat est : ",resultat))
}