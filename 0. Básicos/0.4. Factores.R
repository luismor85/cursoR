##########
#FACTORES#
##########

  x = c("tipo1", "tipo1", "tipo2", "tipo2", "tipo1", "tipo2", "tipo1")
    factor(x) #Arroja el vector con los niveles
    as.factor(x) #Mismo resultado que factor(x)
    
  #Niveles y modificación
    factor(x,levels = c("tipo1", "tipo2", "Otros")) #Determino los niveles exactos, incluso aunque no exista en el factor
    fx <- as.factor(x)
    levels(fx)
      levels(fx) = c("T1", "T2", "Otros") #Cambio los nombres de los niveles
    
  #Ordenar los factores y renombrar niveles
      notas = c(5, 5, 3, 5, 2, 1, 5, 3, 1, 3, 5)
      factor(notas) #niveles: 1, 2, 3, 5
        notas <- ordered(notas, levels = c(1, 2, 3, 5), labels = c("Sus", "Sus", "Sus", "Apr")) #Factores ordenados
        