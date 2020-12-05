#############
#DATA FRAMES#
#############

data() #muestra las bases de datos que incluye R por defecto
  df <- xxxxx   #renombra la base de datos xxxx como df para trabajar con ella
  data(package = "df") #muestra las bases de datos que incluye el paquete df
  data(package = .packages(all.available = TRUE)) #muestra todas las bases de datos de todos los paquetes
  
  ?df #muestra la información de la base de datos df
  ls(df) #muestra las variables de la base de datos df
  summary(df) #resumen de la base de datos df
  head(df,a) #muetra las a primeras filas de la base de datos df
  tail(df,a) #muestra la a últimas filas de la base de datos df
  str(df) #estructura global del dataframe df
  
  ...
  
  names (df) 
  colnames(df) #nombre de las columnas de la bd df
  rownames (df) #nombre de las filas (si no hay nombre, te dará el número)
  
  ncol(df) #número de columnas
  nrow (df) #número de filas
  
  #Filtrar bases de datos
  
  df[1,3] #Valor del cruce Fila 1 - Columna 3
  
  df[1:10,] #Filas de la 1 a la 10. Todas las columnas
  df[,2:3] #Todas las filas. Columnas de la 2 a la 3
  df[1:10,2:3] #Filas de la 1 a la 10, columnas de la 2 a la 3
  
  df[c(2,4,5:7),] #Filas 2, 4 y de la 5 a la 7. Todas las columnas
  df[,c(1,3)] #Todas las filas de las columnas 1 y 3
  df[c(2,4),c(1,3)] #Filas 2 y 4, de las columnas 1 y 3
  
  
  df[df$V1 == "x",] #Todos los valores de la V1 iguales a x
  df[df$V2 > "y",] #Todos los valores de la V2 superiores a y
  df[df$V1 == "x" & df$V2>y,] #Todos los valores de la V1 iguales a x con V2 superiores a y
  
  
  
  

