#######################
#VARIABLES Y FUNCIONES#
#######################

#Crear variables
  nombre de variables =/<- función
  x = (pi^2)/2
  y <- "Antonio"
  
#Crear funciones
  nombre de la funcion <- crear una función con una x
  
  f <- function(x) {x^4 -x/6}
    f(3)
    f(2)
    
  suma <- function(y) {y + 3}
    suma(3)
    
  f2 <- function(x,y) {x+y+2}
    f2 (1,2)

#Modificar variables/funciones sin consola (método más rápido)
  fix(funcion)
  fix(variable)
  
#Listar variables
  ls()
  
#Borrar variables y funciones
  rm(variable)
  
  rm(list = ls()) #borrar todas las variables y funciones
  
#Variables múltiples con distintos valores
  Opfunciones <- function(a,b) {
            print(a+b)
            print(a-b)
            print(a*b)
            print(a/b)
  }
  
  Opfunciones(1,3)

#Variables múltiples con distintos valores indicando la operación
  
  Opfunciones <- function(a,b) {
    print(paste(sprintf("%i + %i = ",a,b),a+b))
    print(paste(sprintf("%i - %i = ",a,b),a-b))
    print(paste(sprintf("%i * %i = ",a,b),a*b))
    print(paste(sprintf("%i / %i = ",a,b),a/b))
  }
  
  Opfunciones(1,3)
  
  