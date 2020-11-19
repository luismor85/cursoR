#####################################
#MODELO DE REGRESIÓN LINEAL MÚLTIPLE#
#####################################


V1~V2+V3+V4


#Coeficiente de correlación
cor(BaseDatos)

NuevaBaseDatos <- select(BaseDatos, V1, V2, V3, V4)


#Diagramas de dispersión de conjunto de variables
pairs(#formula)
  pairs(V1~V2+V3+V4, main='Gráficos de dispersión', col='blue', col.axis='black')
  
  
  
  #1. Obtener los estadísticos de la muestra
  
  V1 <- BaseDatos$OcupHot
  V2 <- BaseDatos$GDPpc
  V3 <- BaseDatos$MovA
  V4 <- BaseDatos$S.S
  
  
  #Estimación de un modelo de regresión lineal múltiple:
  reg2 <- lm(V1~V2+V3+V4)
  summary(reg2)