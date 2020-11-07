#############################
#ESTADÍSTICOS DESCRIPTIVOS 1#
#############################

#Obtener los estadísticos descriptivos generales de una base de datos
  #Valor mínimo, máximo, mediana, media, desviación típica
  install.packages("pastecs")
  library(pastecs)

  stat.desc(BaseDatos)

#Cálculo de la moda (mayor frecuencia) de una variable
  install.packages("modeest")
  library(modeest)
  mfv(BaseDatos$V1) #indica cuál es el valor que más se repite de la muestra  

#Cálculo de cuantiles de una variable
  quantile(BaseDatos$V1, prob = c(0.25, 0.5, 0.75), na.rm = TRUE) #na.rm solo actúa en caso de que haya valores = NA






