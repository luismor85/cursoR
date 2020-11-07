####################################
#GRÁFICOS EXPLORATORIO UNIVARIABLES#
####################################

En cualquier gráfico:
  ..., main = "Título gráfica", sub = "Fuente de la gráfica")

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
