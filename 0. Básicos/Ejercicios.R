#EJERCICIO 1

#Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que 
#marcan el inicio de 2018, ¿a qué hora de qué día de qué año llegaríamos a los 
#250 millones de segundos? ¡Cuidado con los años bisiestos!

minutos <- 60  
hora <- 60*60
día <- 60*60*24
año <- 60*60*24*365
añob <- 60*60*24*366
  
    250000000%/%año  #7 años, dos de ellos bisiestos (2020 y 2024)
      250000000-(5*año + 2*añob) 
      
    29075200/día #336 días
        29075200-(336*día)
    
    44800/hora #12 horas
      44800 - (12*hora)
    
    1600/minutos #26 minutos
      1600 - 26*minutos
  
    40 segundos

    *Resultado*: El día 1 de diciembre (336), a las 12 horas, 26 minutos 
    y 40 segundos de 2025.
    
#Función que os resuelva una ecuación de primer grado (de la forma Ax+B=0)
    
    f <- function(a,b) {-b/a} #x = (-b/a)
      f(5,3) #5x+3 = 0
        = -0.6
      f(-14,7) #7x+4 = 18
        = 0-5
      f(1,0) #x+1 = 1
        = 0

      
#Dad una expresión para calcular 
      #3e-π redondeado a 3 cifras decimales.
      
      f <- 3*exp(1)-pi
        round(f,3) = 5.013
      
      #número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.
      
      f <- ((2+3i)^2)/(5+8i)
        round(f,3) = 0.798


#EJERCICIO 2

# Cread un vector llamado "Harry" formado por la sucesión de números consecutivos 
#entre el -10 y 27. Pedidle a R que os devuelva el elemento de índice 7. 
#Escribid el resultado.
  
  Harry = c(-10:27)
  Harry[7] -> -4
  
# Dad el máximo de la sucesión (100*2^n -7*3^n) con n=0,...,200
  f = function(x) {(100*2^x) -(7*3^x)}
  nf = f(0:200)
  max(nf) -> 1499

# Cread la sucesión de números consecutivos entre 0 y 40. 
# A continuación, cread el vector (3*5^n - 1) con n=0,...,40. Ponedle como nombre x. 
# Ahora, dad el subvector de los elementos que son estrictamente mayores que 3.5
 
  x = function(x) {(3*5^x - 1)}
  xc = x(0:40)
  subvector <- which(xc>3.5)
      