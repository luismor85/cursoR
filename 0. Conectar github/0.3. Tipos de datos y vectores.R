###########################
#TIPOS DE DATOS Y VECTORES#
###########################

#Crear un vector
  c (1, 2, 3) #Crea un vector en una columna con los datos, (1, 2, 3)
  rep (a, x) #Crea un vector repitiendo x veces el valor "a"
  x <- c(1, 2) #Denomina x a nuestro vector
  x <- 1:10 #Crea un vector con los datos del 1 al 10

#Funciones básicas de un vector
 sort (x) #ordena los valores de forma creciente
 rev (x) #ordena los valores de forma decreciente
  
 length(x) #longitud de un vector x
 max (x) min (x) #valor máximo / mínimo del vector x
 sum (x)  #sumatorio de todas las entradas de un vector
 mean (x) #calcula la media de todas las entradas
 prod (x) #producto de todas las entradas de un vector
 cumsum(x) #sumas acumuladas (1, 1+2, 1+2+3, 1+2+3+4,...)
 diff (x) #diferencias de las entradas (1, 2-1, 3-2, 4-3...)
 
#Operar con un vector
  x^2 #Al hacer una operación, todos los datos del vector se cambiarán.
  sqrt(x)
  (1:10)*(1:10) #Operamos con vectores
  (1:10)+(sqrt(1:10))

# En un vector de R todos los datos deben ser de un mismo tipo
  class(vector) # Ver el tipo de vector
    # Lógical (Verdadero, Falso; Mucho, Poco)
    # integer (números enteros)
    # numeric (números reales)
    # complex (números complejos)
    # character (palabras: personas, países...)

# Información en el vector (subvectores)
  vector(i) #valor de la posición i del vector
  vector(legth(vector)) #último valor del vector
  vector(a:b) #valores del vector que ocupan las posiciones de la "a" hasta la "b"
  vector(-i) #todos los valores del vector menos el que ocupa la posición "i"
  
#Condicionales en un vector
  which(x cumple condición)
  which.max(x) #nos da el primer valor máximo
    which(x==max(x)) #nos da todos los valores máximos
  which.min(x)
    which(x==min(x))
  
  
  


  
