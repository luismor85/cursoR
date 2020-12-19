#####################################
#ANÁLISIS DE COMPONENTES PRINCIPALES#
#####################################

install.packages("FactoMineR")
install.packages("factoextra")
install.packages("ca")
library(FactoMineR)
library(factoextra)
library(ca)
library(ggplot2)

BaseDatos <- data.frame(BaseDatos, row.names = "Municipios")
BD2 <- na.omit(BaseDatos)
BD <- na.omit(BaseDatos)

BD$OcupHot = NULL
BD$TourOv = NULL
BD$TourC = NULL
BD$ABOccuRate = NULL

pca <- princomp(BD, cor = TRUE)
#Centra las variables para que tengan media cero
#Desviación estándar es de uno

pca
#Resultados de las variables originales rotadas en el plano

names(pca)
summary(pca)
#Explicación de cada uno de los componentes. 

#SELECCIÓN DE COMPONENTES:
#Criterio de Kaiser: conservar los componentes principales cuyos valores propios son mayores que la unidad
#Generalmente nos quedamos con aquellos factores cuya varianza explicada sea superior al 1%
#Otra posibilidad: quedarnos con los componentes cuya suma de varianza supere el 70%

!!!====================

pca$sdev^2
#Varianza explicada por cada una de las componentes principales


#!!prop_varianza_acum <- cumsum(prop_varianza)
#Proporción de varianza acumulada de las CP

#ggplot(data = data.frame(prop_varianza_acum, pc = 1:13),
       aes(x = pc, y = prop_varianza_acum, group = 1)) +
  geom_point() +
  geom_line() +
  theme_bw() +
  labs(x = "Componente principal",
       y = "Prop. varianza explicada acumulada")
==========
  
#Detallamos los componentes con los que nos quedamos

PC1 <- pca$loadings [,1]
PC2 <- pca$loadings [,2]
PC3 <- pca$loadings [,3]
PC4 <- pca$loadings [,4]

#Explicamos los componentes
PCA_prin <- cbind(PC1, PC2, PC3, PC4)
PCA_prin

fviz_contrib(pca, choice = "var", axes = 4, top = 7)
#Con estas dos funciones podemos incluso poner nombre a nuestras componentes

#Regresión lineal entre variables y componentes

IN <- pca$scores [,1]
OF <- pca$scores [,2]
DE <- pca$scores [,3]
TR <- pca$scores [,4]

V1 <- BD2$OcupHot

modelo <- lm(V1~IN+OF+DE+TR)
summary(modelo)
