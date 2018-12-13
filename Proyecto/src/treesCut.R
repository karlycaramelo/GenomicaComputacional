#install.packages("ape")
#install.packages("phangorn")
#install.packages("seqinr")
library(ape)
library(phangorn)
library(seqinr)


#Lee las cadenas del archivo con formato fasta
sarsData <- read.dna("all-cut.fasta", format="fasta")

#Convierte al fomato phyDat que es uno para usar arboles en R
sarsData_phyDat <- phyDat(sarsData, type = "DNA", levels = NULL)

#mt <- modelTest(sarsData_phyDat)
#print(mt)

#Se calculas las distnacias usando el modelo "JC69" y "F81"
dna_distJC69 <- dist.ml(sarsData_phyDat, model="JC69")
dna_distF81 <- dist.ml(sarsData_phyDat, model="F81")


#Usando cada u no de los difernte smodelos usamos los algotimos
#UPGMA y Neghbor Joining para generar lso arboles
dnaUPGMAJC69 <- upgma(dna_distJC69)	
dnaNJJC69  <- NJ(dna_distJC69)
dnaUPGMAF81 <- upgma(dna_distF81)	
dnaNJF81  <- NJ(dna_distF81)

#GRaficos los arboles
plot(dnaUPGMAJC69, main = "UPGMA JC69 CUT")
plot(dnaUPGMAJC69, main = "UPGMA F81 CUT")
plot(dnaNJJC69, main = "Neighbor Joining JC69 CUT")
plot(dnaNJF81, main = "Neighbor Joining F81 CUT")



