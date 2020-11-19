#####################################
#MODELO DE REGRESIÓN LINEAL MÚLTIPLE#
#####################################

#--------------------------------
  
#Definimos el modelo: V1~V2+V3+V4+V5
  
#--------------------------------  
  
#Análisis exploratorio
  head(BaseDatos)
  summary(BaseDatos)

#---------¡PROBLEMAS!-----------------------

  #Posible correlación de predictores (colinealidad)
  #Variables que no aportan nada al modelo (parsimonia)
  #Relación lineal
  #Distribución normal de los residuos
  #Homocedasticidad (Varianza de los residuos constante)
  #Grados de libertad insuficientes (observaciones > 10*variables)

#-------------------Correlación entre variables-------------------------
  
#Base de Datos
  #library("dplyr")  
  NuevaBaseDatos <- select(BaseDatos, V1, V2, V3, V4, V5)
  
  #Coeficiente de correlación
  #Valores cercanos a 1 = alta relación entre las variables
  cor(NuevaBaseDatos)

  #Diagramas de dispersión de conjunto de variables
  pairs(#formula)
  pairs(V1~V2+V3+V4+V5, main='Gráficos de dispersión', col='blue', col.axis='black')
  
  reg2 <- lm(V1~V2+V3+V4+V5)
  summary(reg2)

  
  V1 <- BaseDatos$OcupHot
  V2 <- log(BaseDatos$GDPpc)
  V3 <- log(BaseDatos$MovA) #Eliminar 0
  V4 <- log(BaseDatos$ABOccuRate)
  V5 <- BaseDatos$S.S  
  
  V1 <- BaseDatos$OcupHot
  V2 <- BaseDatos$GDPpc
  V3 <- BaseDatos$MovA
  V4 <- BaseDatos$ABOccuRate
  V5 <- BaseDatos$S.S  
  