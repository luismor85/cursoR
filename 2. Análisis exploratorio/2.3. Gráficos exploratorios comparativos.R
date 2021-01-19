####################################
#ANÁLISIS EXPLORATORIO COMPARATIVOS#
####################################

library(lattice)
library(ggplot2)

#Boxplot con dos variables (indicado cuando una de las dos es categórica)
  boxplot(V1~V2, data = BaseDatos)
  
#Barplot (frecuencias absolutas)
  barplot(table(V1), col=c("red","blue"), main="Diagrama de barras de frecuencias absolutas")
  barplot(table(V1,V2), col=c("red","blue"), main="Diagrama de barras de frecuencias absolutas", legend.text = TRUE) #Muestra cómo se distribuye la V2 en relación a la V1 de forma apilada.
  barplot(table(V1,V2), col=c("red","blue"), main="Diagrama de barras de frecuencias absolutas", beside = TRUE,  legend.text = TRUE) #Muestra cómo se distribuye la V2 en relación a la V1 de forma NO apilada.
  barplot(table(V1,V2), col=c("red","blue"), main="Diagrama de barras de frecuencias absolutas", legend.text = TRUE, horiz = TRUE) #Muestra cómo se distribuye la V2 en relación a la V1.
    
#Histograma
  hist(subset(BaseDatos, V1 == "x")$V2) #Representa un histograma de la Variable 2 en relación al Valor "x" de la Variable 1

#Diagrama circular  
  pie(table(V1), main = "Gráfico circular de la distribución de la variable 1")

#Gráfico de mosaico
  plot(table(V1,V2), main = "Gráfico de mosaico de las variables V1 y V2")
  
#Scatterplot
  with(BaseDatos, plot(OcupHot, GDPpc))
  with(subset(BaseDatos, V3 == "x"), plot(V1,V2)) #Subset... se utiliza para indicar un valor concreto de una variable (generalmente categórica)

  #o directamente
  plot(BaseDatos$V1, BaseDatos$V2)

#Comparativas de scatterplot entre variables según el valor de una tercera categórica
xyplot(V1 ~ V2 | V3, data = BaseDatos, layout = c (2,1))


#atributos para cambiar colores, descripciones o presentación
  ..., main = "Descripción",... #Título de la tabla
  ..., xlab="Descripción", ylab="Descripción",... #Descripción eje X y eje Y
  ..., col="steelblue",... #cambia color a azul metal. Hay otros muchos colores.
  ..., names=c(Hombre, Mujer),... #cambia el nombre de las variables del gráfico, por ejemplo, de 1 - 0, a Hombre - Mujer
  ..., legend.text=c(Sí, No),... #cambia el nombre de las variables en la leyend, por ejemplo, de 1 - 0, a Sí - No
  par (mfrow=c(1,2)) #puesto antes de dos gráficos mostrará uno al lado del otro.
  par (mfrow=c(2,2)) #puesto antes de cuatro gráficos mostrará dos arriba, dos abajo.

#Establecer líneas en los gráficos
  abline(h = x, col = "red", lwd = 2, lty = 3) #Establece una linea horizontal en el valor x
  abline(v = y, col = "red", lwd = 2, lty = 3) #Establece una línea vertical en el valor y


#Fuentes:
  #https://swcarpentry.github.io/r-novice-gapminder-es/08-plot-ggplot2/index.html
  #https://www.uv.es/vcoll/graficos.html
  #http://www.fcharte.com/libros/ExploraVisualizaConR-Fcharte.pdf
  #https://www.statology.org/multiple-boxplots-r/
  #https://www.udemy.com/course/estadistica-descriptiva/learn/lecture/13021414#overview
