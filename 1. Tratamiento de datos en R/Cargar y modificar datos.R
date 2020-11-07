############################
#CARGAR Y MODIFICAR DATOS 1#
############################

#data.frame = base de datos que cargamos
#Muestra = primera columna, donde aparece el nombre de los individuos estudiados
#Vx = Variables en nuestra muestra (V1, V2, V3,...)
#BD = nueva base de datos generada con los cambios ocasionados. Puede ser "data.frame", lo que modificaría la base de datos original sin crear una nueva.

#Cargar datos
  File -> Import dataset -> From text (reader) - para CSV
  File -> Import dataset -> From Excel - para Excel

#Duplicar la base de datos (dataframe) para trabajar con una nueva BD sin modificar la original
  #Duplicación simple
  BD <- dataframe

#Transformación de bases de datos (sirve también para duplicar)
  #Primera columna = muestra, no una variable
  BD <- data.frame(dataframe, row.names = "Muestra")
  
  #Eliminar filas donde haya datos perdidos
  BD <- data.frame[complete.cases(data.frame),]

  #Eliminar variables de una muestra
  data.frame$V1 = NULL #Elimina la variable 1
  data.frame$V1 = NULL #Elimina la variable 2
  
  #Filtrar una base de datos en función de una o más variables
  #Condicion Y ( , ). Condición O ( | )
  
  install.packages("datos")
  library("datos")
  library("tidyverse")

  filter(data.frame, V1 == 1, V2 == rojo) #muestra la base de datos con la muestra que cumpla las dos condiciones
  filter(data.frame, V1 == 1 | V1 == 2) #muestra la base de datos con la muestra que cumpla cualquiera de las dos condiciones
  filter(data.frame, V1 > 1 | V1 <= 2) #....
  
  BD <- filter(data.frame, V1 == 0) #crea o modifica la base de datos, mostrando solo la muestra con las condiciones
  