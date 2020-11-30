####################################
#ANÁLISIS EXPLORATORIO COMPARATIVOS#
####################################

library(lattice)
library(ggplot2)

#Boxplot con dos variables (indicado cuando una de las dos es categórica)
  boxplot(V1~V2, data = BaseDatos)

#Histograma
  hist(subset(BaseDatos, V1 == "x")$V2) #Representa un histograma de la Variable 2 en relación al Valor "x" de la Variable 1

#Scatterplot
  with(BaseDatos, plot(OcupHot, GDPpc))
  with(subset(BaseDatos, V3 == "x"), plot(V1,V2)) #Subset... se utiliza para indicar un valor concreto de una variable (generalmente categórica)

  #o directamente
  plot(BaseDatos$V1, BaseDatos$V2)
  
#Comparativas de scatterplot entre variables según el valor de una tercera categórica
xyplot(V1 ~ V2 | V3, data = BaseDatos, layout = c (2,1))


#atributos para cambiar colores y descripciones
  ..., main = "Descripción",... #Título de la tabla
  ..., xlab="Descripción", ylab="Descripción",... #Descripción eje X y eje Y
  ..., col="steelblue",... #cambia color a azul metal. Hay otros muchos colores.

#Establecer líneas en los gráficos
  abline(h = x, col = "red", lwd = 2, lty = 3) #Establece una linea horizontal en el valor x
  abline(v = y, col = "red", lwd = 2, lty = 3) #Establece una línea vertical en el valor y


#Fuentes:
  #https://swcarpentry.github.io/r-novice-gapminder-es/08-plot-ggplot2/index.html
  #https://www.uv.es/vcoll/graficos.html
  #http://www.fcharte.com/libros/ExploraVisualizaConR-Fcharte.pdf
  #https://www.statology.org/multiple-boxplots-r/




