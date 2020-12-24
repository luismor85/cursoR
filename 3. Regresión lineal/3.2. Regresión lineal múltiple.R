#####################################
#MODELO DE REGRESIÓN LINEAL MÚLTIPLE#
#####################################

#Teoría (log): https://economipedia.com/definiciones/logaritmos-en-econometria.html
#Regresión múltiple ampliada: https://rpubs.com/Joaquin_AR/226291

#--------------------------------
  
#Definimos el modelo: V1~V2+V3+V4+V5

modelo <- lm(V1~V2+V3+V4+V5, data = datos )
summary(modelo)

  
#--------------------------------  
  
#Análisis exploratorio
  head(BaseDatos)
  summary(BaseDatos)

#---------¡PROBLEMAS!-----------------------

  #Posible correlación de predictores (colinealidad)
  #Variables que no aportan nada al modelo (parsimonia)
  #Relación lineal (OLS)
  #Distribución normal de los residuos
  #Homocedasticidad (Varianza de los residuos constante)
  #Grados de libertad insuficientes (observaciones > 10*variables)

#-------------------Correlación entre variables-------------------------

#Base de Datos
  library("dplyr")  
  NuevaBaseDatos <- select(BaseDatos, OcupHot, MovA, ABOccuRate, GDPpc, S.S)
  
  #Coeficiente de correlación
  #Valores cercanos a 1 = alta relación entre las variables
  cor(NuevaBaseDatos)

  #Diagramas de dispersión de conjunto de variables
  pairs(#formula)
  pairs(V1~V2+V3+V4+V5, main='Gráficos de dispersión múltiple', col='red', col.axis='black')

#-------------------Regresión-------------------------
    
  modelo.lineal.m <- lm(Ocup~MovA+AB+S.S)
  summary(modelo.lineal.m)
  

  