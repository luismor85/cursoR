###############################
#ANÁLISIS CONJUNTO / COINJOINT#
###############################

https://rpubs.com/jlopezsi/207018


install.packages("devtools")
install.packages("usethis")
library(usethis)
library(devtools)

install_github("jlopezsi/MDSConjoint")
library(MDSConjoint)

data(MDSConjointData)
names(MDSConjointData)

library(plyr)
tire$design$Brand
MDSConjointData$tire$design$Brand <- revalue(MDSConjointData$tire$design$Brand, c("Goodstone"="Bridgestone"))

tire<-MDSConjointData$tire
tire$design

experiment = expand.grid(
  tire$design) #La función expand.grid() nos proporciona todas las combinaciones posibles entre los niveles de producto.

class(experiment)
head(experiment)
tail(experiment)
length(experiment)

#Vamos a generar un set de productos balanceados: fracción del experimento completo que tenga la propiedad de que las variables sean independientes, es decir, que su correlación sea cero.

install.packages("support.CEs")
library(support.CEs)

tire.survey <- Lma.design(attribute.names = 
                            tire$design, 
                          nalternatives = 1, nblocks=1, seed=9999) #La función Lma.desgin() nos proporciona un conjunto ortogonal de perfiles de producto que nos permite estimar los efectos principales de los niveles de los atributos.
names(tire.survey)

tire.survey
print(questionnaire(tire.survey))

tire.survey$alternatives
tire$ratings #Puntuaciones de los sujetos de 1 a 9
tire$bundles #Orden por preferencia de equipamientos
tire$design #Posibles uniones

tires.partWorthsAll<-conjoint.estimation(tire$ratings, tire$bundles, tire$design)
names(tires.partWorthsAll)

tires.partWorthsAll$prediction

tires.imp <- importance.of.attributes(tire$ratings, tire$bundles, tire$design)
names(tires.imp)

knitr::kable(head(tires.imp$imp),digits=2, caption = 'Importancia de los atributos: Resultados de los 5 primeros individuos' )

visualize.importance(tires.imp$part.worths,tires.imp$imp, tire$design)




install_github("devtools")

library(MDSConjoint)