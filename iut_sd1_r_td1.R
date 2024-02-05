#Exercice 1:
#1.
a = 10
b <- 5

#2.
resultat = a * b
print(resultat)

#3.
A = 7.2
B = 10.1 
# a et A son different, également pour b et B.

#4.
resultat = A + B
# il remplace le précedent "resultat" avec le + récent.

#5.
rm(a, A, b, B, resultat)
# Supprime tout.

#Exercice 2:
#1.
vecteur = c(1,2,3,4,5)
class(vecteur)
vecteur[3]
#1.
v1 = 1:5
#2.
v2 = v1 + 3
#3.
v3 = 1:6
#4.
v4 = v3^2
#5.
v5 = v4/2
#6.
vecteur2 = c("Lundi", "Mardi", "Mercredi", 
             "Jeudi", "Vendredi", "Samedi", 
             "Dimanche")
class(vecteur2)
vecteur2[c(2, 7)]
#7.
vecteur3 = c(TRUE, FALSE, TRUE, TRUE, FALSE)
class(vecteur3)
#8.
vecteur4 = c(1,2,3,4,5,6)
class(vecteur4)
vecteur4[-3]
#9.
vecteur5 = c("Janvier", "Fevrier", "Mars", 
             "Avril", "Mai", "Juin", "Juillet", 
             "Aout", "Septembre", "Octobre", 
             "Novembre", "Decembre")
class(vecteur5)
vecteur5[c(1,2,3)]
#10.
vecteur6 = c(-1,-2,-3,-4,-5)
class(vecteur6)
vecteur6[c(5,1)]
#11.
vecteur7 = c("Banane", "Pomme", "Poire", "Orange")
class(vecteur7)
vecteur7[c(-1,-2)]
#12.
vecteur8 = c(1, 2, NA, NA)
class(vecteur8)
rm(v2,v3,v4,v5, vecteur,vecteur2,vecteur3,
   vecteur4,vecteur5,vecteur6,vecteur7,vecteur8)
#14.
sequence = seq(from = 1, to = 10)
length(sequence)
#15.
sequence2 = seq(from = 2, to = 20, by = 2)
length(sequence2)
#16.
sequence3 = seq(from = 0, to = -5)
length(sequence3)
#17.
sequence4 = seq(from = 5, to = 50, by = 5)
length(sequence4)
#18.
sequence5 = seq(from = 10, to = 1)
length(sequence5)
#19.
sequence6 = seq(from = 0, to = 1, by = 0.1)
length(sequence6)
#20.
sequence7 = seq(from = 5, to = -5, by = -1)
length(sequence7)
#21.
sequence8 = seq(from = 1, to = 10, by = 2)
length(sequence8)
rm(sequence,sequence2,sequence3,
   sequence4,sequence5,sequence6,
   sequence7,sequence8)
#22.
