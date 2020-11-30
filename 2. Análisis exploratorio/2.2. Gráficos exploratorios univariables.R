####################################
#GRÁFICOS EXPLORATORIO UNIVARIABLES#
####################################

#Parámetros:
  main = "Título gráfica" 
  sub = "Fuente de la gráfica"
  pch = n #tipo de punto o indicador
    #permite incorporar el elemento que consideremos
  cex = n #tamaño del punto o indicador
  col = color #color de los puntos - http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf
    bg = color #color del interior de los puntos
  log = "variable" #transforma en logaritmo
  
  par(mfrow = c(1,2)) #comparación de dos gráficos: 2 columnas por fila

#Tipo de gráfico
  type = 
    "p" = puntos
    "l" = línea
    "b" = líneas rectas que unen los puntos
    "h" = histograma

#Tipo de línea
    lty =
      "solid" línea continua
      "dashed" línea discontinua
      "dotted" línea de puntos
      "dotdashed" línea alterna puntos y rayas
    lwd = #grosor de líneas
    

  y = (2*(1:20))
  x = (-1)^(20:1)*5*(20:1)
  plot(x,y, main = "Felices Fiestas", sub = "", xlab = "", ylab = "", axes = FALSE,
       pch = 8, cex = 1, type = "b", lty = 4, lwd = 4,
       xaxp = c(-200,200,1), yaxp = c (-100, 100, 2), col = c("darkgreen", 2:20))
  
  
  plot(1:5, 1:5, pch = c("☺"),
       col = c("orange", 2:5), cex = 4,
       xlim = c(0, 6), ylim = c(0, 6))
  
         
#Plot de funciones
  
  plot (función)
    plot(2^(1:5))
    
    plot(function(x) {sqrt(x)})
      f = function(x) {sqrt(x)} 
      plot(f)
    
  #Sucesión de Fibonacci
    n= 1:20
    fib = (1/sqrt(5))*((1+sqrt(5))/2)^n - (1/sqrt(5))*((1-sqrt(5))/2)^n
    plot (fib, xlab = "n", ylab = expression(F[n]), 
          pch = 20, cex = 2, col = "steelblue",
          main = "Sucesión de Fibonacci", type = "b")
    
#Boxplot
  #col= cambia el color
  #abline(h =) establece una línea horizontal
  
  boxplot(BaseDatos$V1, col = "orange")
  abline(h = 4.18, col = "red")
  
  boxplot(BaseDatos$V1, col = "grey")
  abline(h = 2.3, col = "blue")

#Histogram de barras
  #breaks= cambia el número de barras
  #rug muestra la densidad en cada valor
  #abline(v =) establece una línea vertical
  
  hist(BaseDatos$V1, col = "grey", main = "Descripción")
  rug(BaseDatos$V1)
  abline(v = 83, lwd = 2)
  abline(v = median(BaseDatos$V1), col = "red", lwd = 4)
  
  hist(BaseDatos$V1, col = "grey", breaks = 6)
  hist(BaseDatos$V1, col = "grey")

#Histograma de densidad
  densidad_V1 <- density(BaseDatos$V1)
  plot(densidad_V1)
  
#Barplot (para variables categóricas)
  barplot(table(BaseDatos$V1), col = "green", main = "Descripción")
