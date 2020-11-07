###################
#MODIFICAR DATOS 2#
###################

#Renombrar columnas (variables)
  #Opción 1
  BD <- select(BaseDatos, new.V1 = V1, new.V2 = V2)

  #Opción 2
  BD <- rename(BaseDatos, new.V1 = V1, new.V2 = V2)

#Quedarse con los valores no repetidos de una columna
  BD <- distinct(BaseDatos, V1) #Elige de la V1 los valores distintos
  BD <- distinct(BaseDatos, V1, V2) #Elige las combinaciones únicas de la V1 en relación con la V2
  
#Crear una base de datos a partir de dos dataframes
  BD <- BaseDatos1 %>% left_join(BaseDatos2)
  