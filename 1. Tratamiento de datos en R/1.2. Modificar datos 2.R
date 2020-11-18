###################
#MODIFICAR DATOS 2#
###################

library("dplyr")

#Renombrar columnas (variables)
#Opción 1: cambia el nombre de las variables
BaseDatos <- rename(BaseDatos, renameV1 = V1, renameV2 = V2)

  #Opción 2: crea una nueva base de datos ÚNICAMENTE con las variables elegidas
  BaseDatos <- select(BaseDatos, newnameV1 = V1, newnameV2 = V2, V3, V4)

#Quedarse con los valores no repetidos de una columna
  BD <- distinct(BaseDatos, V1) #Elige de la V1 los valores distintos
  BD <- distinct(BaseDatos, V1, V2) #Elige las combinaciones únicas de la V1 en relación con la V2
  
#Crear una base de datos a partir de dos dataframes
  BD <- BaseDatos1 %>% left_join(BaseDatos2)
  