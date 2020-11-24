###################
#FUNCIONES BÁSICAS#
###################

#Solicitar ayuda sobre una función o paquete
  help(xxxxxx)

#Instalar paquetes y dependencias necesarias para su instalación
  install.packages("paquete a instalar", dep = TRUE)
  
#Comenzar a utilizar un paquete instalado
  library(paquete a usar)
  
#Github como calculadora
  #Códigos básicos: +; -; /; ^; decimal = .
          #%/% = cociente entero
          #pi = código pi
          #Inf = infinito
          #NA = Not availeable
          #Nan = Not a number
          #e+10 = 0.0000000... tantos ceros como el número indique
  
    #Ejemplos
  
    2.3+1.2345
    2+(3+1); 2^3
    8/5
    (8%/%5)
    pi; pi^2
    Inf; -Inf
    5/0 #Infinito
    0/0 #No tiene resultado numérico
    2^50

  #Funciones
    
    sqrt(x) #raíz cuadrada
    exp(x) #e elevado a x
    log(x) #logaritmo neperiano de x
    log10(x) #logaritmo de x en base 10
    log(a,b) #logaritmo de a en base b
    abs(x) #número absoluto de x
    factorial(x) #factorial n*(n-1)
    choose(n, m) #coeficiente binomial (factn / m-(factn-factm))
      #Tengo 5 platos (n) y quiero coger 3: ¿cuántas posibilidades distintas tengo?
      #el plato 1, 2 y 3, el 1, 3 y 4, el 1, 5, 7... 10 formas
      choose (5, 3)
      
  #Redondeos
    print(función,n) #muestra las n cifras del resultado de la función
      print(13/3,3)
      print(pi,22)
      
    round(función,n) #muestra las n cifras a partir del decimal
      round(13/3,3)
      
      
  #Trigonometría
      
      sin(x) #seno de x
      cos(x) #coseno de x
      tan(x) #tangente de x