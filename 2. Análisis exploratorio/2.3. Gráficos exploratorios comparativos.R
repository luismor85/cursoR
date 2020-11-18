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
with(BaseDatos, plot(V1, V2))
with(subset(BaseDatos, V3 == "x"), plot(V1,V2)) #Subset... se utiliza para indicar un valor concreto de una variable (generalmente categórica)

#Comparativas de scatterplot entre variables según el valor de una tercera categórica
xyplot(V1 ~ V2 | V3categ, data = BaseDatos, layout = c (2,1))

ggplot(data = BaseDatos) +
  geom_point(mapping = aes(x = V1, y = V2)) +
  facet_wrap(~ V3categ, nrow = 1) #nrow para establecer filas y columnas

#Comparativas de scatterplot entre variables identificadas por color de una tercera variable categórica
ggplot(data = BaseDatos) +
  geom_point(mapping = aes(x = V1, y = V2, color = V3categ))

#Línea de tendencia
ggplot(data = BaseDatos) +
  geom_smooth(mapping = aes(x = V1, y = V2))

#Scatterplot más línea de tendencia
ggplot(data = BaseDatos) +
  geom_point(mapping = aes(x = V1, y = V2, color = V3categ)) +
  geom_smooth(mapping = aes(x = V1, y = V2))


#atributos para cambiar colores y descripciones
  ..., main = "Descripción",... #Título de la tabla
  ..., xlab="Descripción", ylab="Descripción",... #Descripción eje X y eje Y
  ..., col="steelblue",... #cambia color a azul metal. Hay otros muchos colores.

#atributos en ggplot
  #geom_point - para scatterplot con puntos
  ..., color = V1,... #establece el color en base a los tipos de una variable
  #geom_smooth - para scatterplot con flujos
  ..., linetype = V3,... #establece distintos tipos de línea en base a los tipos de una variable categórica 
  
  
#Establecer líneas en los gráficos
  abline(h = x, col = "red", lwd = 2, lty = 3) #Establece una linea horizontal en el valor x
  abline(v = y, col = "red", lwd = 2, lty = 3) #Establece una línea vertical en el valor y


#Fuentes:
  #https://swcarpentry.github.io/r-novice-gapminder-es/08-plot-ggplot2/index.html
  #https://www.uv.es/vcoll/graficos.html
  #http://www.fcharte.com/libros/ExploraVisualizaConR-Fcharte.pdf
  #https://www.statology.org/multiple-boxplots-r/
  https://es.r4ds.hadley.nz
  




