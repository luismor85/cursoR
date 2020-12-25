###########################
#ESTADÍSTICOS DESCRIPTIVOS#
###########################

#Datos cualitativos: expresan la cualidad del individuo
#Datos ordinales: expresan un orden natural
#Datos cuatitativos: expresan medidas

#DATOS CUALITATIVOS

#Construímos una base de datos aleatoria (bolas de un sorteo, y respuestas, por ejemplo)
sorteo <- sample(1:5, size = 12, replace = TRUE)

Respuestas <- factor(sample(c("Mucho", "Poco", "Nada"), size = 15, replace = TRUE))
Respuestas

#Frecuencias
table(x) #Frecuencia absoluta: total de veces que se repite cada opción

prop.table(table(x)) #Frecuencia relativa: veces sobre el total de cada opción
100*prop.table(table(x)) #Frecuencia relativa porcentual

names(which(table(x)==max(table(x)))) #Moda: el elemento que más se repite en el factor x

#Estadísticas cruzadas
install.packages("gmodels")
library(gmodels)

CrossTable(x, y, prop.chisq = FALSE) 





#DATOS CUANTITATIVOS

#Obtener los estadísticos descriptivos generales de una base de datos
  #Valor mínimo, máximo, mediana, media, desviación típica
  #Opción 1: Valor mínimo, máximo, mediana, media, desviación típica
    install.packages("pastecs")
    library(pastecs)
    stat.desc(BaseDatos)
  
  #Opción 2: Media, skewness, curtosis
    install.packages("psych")
    library("psych")
    describe(BaseDatos)
      #Skewness = 0, normal distribution
      #Kurtosis = 0, normal distritution
  
#Cálculo de la moda (mayor frecuencia) de una variable
  install.packages("modeest")
  library(modeest)
  mfv(BaseDatos$V1) #indica cuál es el valor que más se repite de la muestra  

#Cálculo de cuantiles de una variable
  quantile(BaseDatos$V1, prob = c(0.25, 0.5, 0.75), na.rm = TRUE) #na.rm solo actúa en caso de que haya valores = NA

