############################
#CARGAR Y MODIFICAR DATOS 1#
############################

#BaseDatos = base de datos que cargamos
#Muestra = primera columna, donde aparece el nombre de los individuos estudiados
#Vx = Variables en nuestra muestra (V1, V2, V3,...)
#BD = Nombre de la base de datos creada con los cambios. Puede tener el mismo nombre (modificamos BaseDatos) u otro (creamos una nueva base de datos)

#Cargar datos
  File -> Import dataset -> From text (reader) - para CSV
  File -> Import dataset -> From Excel - para Excel

#Duplicar la base de datos (dataframe) para trabajar con una nueva BD sin modificar la original
  #Duplicación simple
  BaseDatos <- data_frame

#Transformación de bases de datos (sirve también para duplicar)
  #Primera columna = muestra, no una variable
  BaseDatos <- data.frame(BaseDatos, row.names = "Muestra")
  
  #Eliminar filas donde haya datos perdidos (NA)
    #Opción 1:
    BD <- BaseDatos[complete.cases(BaseDatos),]
    #Opción 2:
    BD <- na.omit(BaseDatos)
  
  #Eliminar variables de una muestra
  BaseDatos$V1 = NULL #Elimina la variable 1
  BaseDatos$V1 = NULL #Elimina la variable 2
  
  #Filtrar una base de datos en función de una o más variables
  #Condicion Y ( , ). Condición O ( | )
  
  install.packages("datos")
  library("datos")
  library("tidyverse")

  BD <- filter(BaseDatos, V1 == 1, V2 == rojo) #crea base de datos con la muestra que cumpla las dos condiciones
  BD <- filter(BaseDatos, V1 == 1 | V1 == 2) #crea base de datos con la muestra que cumpla cualquiera de las dos condiciones
  BD <- filter(BaseDatos, V1 > 1 | V1 <= 2) #....
  BD <- filter(BaseDatos, V1 == 0) #crea base de datos, mostrando solo la muestra con las condiciones
  
# Cargar datos de internet o de un directorio local
  scan(url)
  scan(directorio)
  scan()
  copy-paste #crearía un vector con datos copiados y pegados
  
  