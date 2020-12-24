##########
#MATRICES#
##########

BD <- BaseDatos
library(readr)
write_delim(BD, "./BD.txt", delim = ",")


# Crear una matriz
  matrix(vector, nrow = n, ncol = n, byrow = valor_lógico)
      #vector: n (todos serían valores n); a:b (matriz se rellena con los datos de a-b)
      #nrow es el número de filas . #nrow debe ser múltiplo de los datos, si no, rellena la información en bucle
      #ncol es el número de columnas . #nrow debe ser múltiplo de los datos, si no, rellena la información en bucle
      #byrow = TRUE -> se construye por filas
      #byrow = FALSE -> se construye por columnas

  matriz <- matrix(1, nrow=6, ncol=3)
  matriz  

  matriz <- matrix(1:12, nrow=4) #Por defecto, byrow = False
  matriz
  
  matriz <- matrix(1:12, nrow=4, byrow=T)
  matriz
  
# Construir una matriz con vectores ya creados o incorprar vectores
  rbind(vector1, vector2,...) #vectores en filas
  cbind(vector1, vector2,...) #vectores en columnas
  
  rbind(matriz, c(1,2,3)) #añade una nueva fila con valores 1,2,3 a la matriz
  cbind(matriz, c(1:4)) #añade una nueva columna con valores 1:4 a la matriz
  
# Extraer datos de una matriz
  Matriz[a,b] #extrae la combinación: fila a, columna b
  
  matriz[3,3]
  matriz[,3] #todos los valores de la columna 3
  matriz[3,] #todos los valores de la fila 3
  matriz[c(2,3), c(1,2)] #la combinación de componentes de las filas 2,3 con las columnas 1,2
  
# Trasponer
  t(matriz)
  