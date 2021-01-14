####################################
#ANÁLISIS ENVOLVENTE DE DATOS (DEA)#
####################################

EFICIENCIA DE PRODUCCIÓN

Orientación input: cuánto input podemos ahorrar para mantener el output constante
Orientación output: cuánto output podemos incrementar manteniendo el input constante

#Ejemplo orientación output:
input <- c (3, 4.5, 4.5, 6, 6)
output <- c(2, 4.5, 6, 8, 10)

plot(input,output, type="overplotted")
points(4.5,4.5, col="red", pch = 16) 
text(4.5,4.5,labels = "A", pos = 1)
points(6,8, col="red", pch = 16) 
text(6,8,labels = "C", pos = 1)
points(4.5,6, col="green", pch = 16) #Óptimo eficiente para input = 4.5 (orientación output) 
text(4.5,6,labels = "B", pos = 2) 
points(6,10, col="green", pch = 16) #Óptimo eficiente para input = 6 (orientación output) 
text(6, 10,labels = "D", pos = 2) 

Medida Debreu-Farrell para output: 
  Output actual / Output eficiente = 4.5/6 (0.75) para el primer punto ineficiente
  Output actual / Output eficiente = 8/10 (0.8) para el segundo punto ineficiente

  El primer punto ineficiente (4.5,4.5) produce un 75% respecto al punto óptimo de output para el mismo input (6)
  El segundo punto ineficiente (6,8) produce un 80% respecto al punto óptimo de output para el mismo input (8)

  El primer punto ineficiente podría ser un '25%' mayor, y el segundo podría ser un '20%' superior.

#Ejemplo orientación intput:
  input2 <- c (3, 4.5, 6, 6, 10)
  output2 <- c(2, 4.5, 4.5, 8, 8)
  
  plot(input2,output2, type="overplotted")
  points(4.5,4.5, col="green", pch = 16) #Óptimo eficiente para output = 4.5 (orientación output)
  text(4.5,4.5,labels = "A", pos = 2)
  points(6,8, col="green", pch = 16) #Óptimo eficiente para output = 8 (orientación output)
  text(6,8,labels = "C", pos = 2)
  points(6,4.5, col="red", pch = 16) 
  text(6,4.5,labels = "B", pos = 1)
  points(10,8, col="red", pch = 16)
  text(10,8,labels = "D", pos = 1)
  
  Medida Debreu-Farrell para input: 
  
  Input actual / Input eficiente = 4.5/6 (0.75) para el primer punto ineficiente
  Input actual / Input eficiente = 8/10 (0.8) para el segundo punto ineficiente
  
  El primer punto ineficiente (4.5,4.5) podría utilizar el 75% de los inputs que está usando para usar el mismo output.
  El segundo punto ineficiente (6,8) podría utilizar el 80% de los inputs que está usando para usar el mismo output.
  
  El primer punto ineficiente podría ser un '25%' más eficiente en el gasto, y el segundo podría ser un '20%' más eficiente en el gasto.
  
    
  En caso de no conocer un punto por proyección sobre la recta, podríamos usar la ecuación de la resta
  (Y - y1) = ((y2-y1)/(x2-x1))*(X-x1)
  

  EFICIENCIA ASIGNATIVA
  Recursos <- c(25, 15, 17.5, 12, 15, 10)
  Trabajadores <- c (2,3,3.5,4,5,9)
  Producción <- c(1,1,1,1,1,1) #Normalizado a 1, dividiendo toda la fila entre la producción total
  
  plot(Recursos, Trabajadores)
  segments(10,9,12,4, col="blue")
  segments(12,4,15,3, col="blue")
  segments(15,3,25,2, col="blue") #Líneas de eficiencia (azul)
  text(10,9,labels = "A", pos = 4)
  text(15,5,labels = "C", pos = 2)
  text(12,4,labels = "B", pos = 2)
  text(17.5,3.5,labels = "E", pos = 2)
  text(15,3,labels = "D", pos = 2)
  text(25,2,labels = "F", pos = 3)
  segments(0,0,12,4, col="red")
  segments(15,5,12,4, col="red")
  segments(0,0,15,3, col="red")
  segments(17.5,3.5,15,3, col="red") #Líneas de comparativa tecnológica (rojo)
  
  Como todos producen lo mismo, los puntos más eficientes son los que menos recursos usan
  Los puntos C y E son ineficientes, ya que B y D usan menos proporción de recursos y trabajadores para conseguir el mismo otuput
  
  Medida de eficiencia Breu Farrell
  
  Distancia entre el origen y el punto eficiente, dividido entre el origen y el punto ineficiente
  El origen (0,0) es el más eficiente: produzco sin gastar nada. Maná.
  
  Distancia = Raíz (x2 - x1)^2 + (y2 - y1)^2
  x1,y2 = (0,0)
  
  DB = sqrt(((12-0)^2) + ((4-0)^2)) #Distancia de B, ya que B=(12,4)
  DC = sqrt(((15)^2) + ((5)^2)) #Distancia de C
  
  Eficiencia B = DB/DC = 0.80
  
  El punto C tiene una ineficiencia del '20%'
  
  Eficiencia D = DD/DE
  
  El punto D tiene una ineficiencia del '15%'
  
  