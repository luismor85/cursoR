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

#MEDIDA DE DISPERSIÓN
  
  range(x) #valores mínimos y máximos
  diff(range(x)) #Rango (diferencia máximo y mínimo)
  IQR(x, type = ...) #Rango intercuantílico (diferencia entre el Q1 (0.25) y el Q3 (0.75))
  var(x) #Varianza muestral
  sd(x) # Desviación típica muestral
  
#RESUMEN
  
  summary(x) #resumen estadístico de una muestra
  summary(subset(dataset, atributo1 == x, c("atributo2","atributo3"))) #resumen de los estadísticos de la muestra que en el atributo 1 tenga valor x, en relación al atributo 1 y 2 
  by(dataset[,c(x,y)], dataset$atributo, FUN = summary) #Resumen estadístico de las columnas x e y (numéricas) para las distintas categorías existentes en "atributo"
  
#NA
#Si el resultado en alguna operación fuera NA, es tan fácil como incorporar a cualquier función:
  funcion(x,..., na.rm = TRUE)
