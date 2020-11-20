#########################
#Diagnóstico del modelo#
########################

# Teoría: https://www.diegocalvo.es/analisis-de-regresion-simple-en-r/

# Normalidad de la muestra
  #Hipótesis nula (H0): La muestra proviene de una distribución normal.
  
  #Un primer análisis nos dará pistas de la  normalidad de la muestra.
  hist(V1)
  hist(BaseDatos[,5]) #siendo 5 la columna número 5 del dataframe
  
  #Test de normalidad
  
  
  
  
  
  
  install.packages("PoweR")
  library("PoweR")
  
  attach(BaseDatos)
  Normality.tests(V1)
  
  V1 <- BaseDatos$OcupHot
  
  
  lillie.test(OcupHot)

  install.packages("sos")
  library(sos)
  findFn('Anderson-Darling')
  
  
    

# Test de Shapiro-Wilk (normalidad de los residuos)
  # Hipótesis nula: normalidad muestra. 
  # p-valor < 0.05, la hipótesis nula es rechazada - (los datos no vienen de una distribución normal). 
  # p-valor > 0.05, no puede rechazarse la hipótesis nula - (asumimos que la distribución de nuestra muestra es normal)

  shapiro.test(modelo.lineal$residuals)

# Test de Breush-Pagan (homocedasticidad de los residuos)
  # Ho: La varianza de los residuos es homocedástica (los errores de la regresión no tienen varianza constante)
  # Si p-valor <0.05, es rechazada la hipótesis nula. Heterocedasticidad que debemos corregir.
  # Si p-valor > 0.05, no se rechaza la hipótesis nula: la varianza de los residuos es homocedastica

  library(lmtest)
  bptest(modelo.lineal)

#Test de Durbin-Watson (autocorrelación)
  # Hipótesis nula: Autocorrelación de primer orden = 0
  # p-valor < 0.05, se puede rechazar la H0 -> debemos rechazar la hipótesis nula de ausencia de autocorrelación en el modelo (problema de autocorrelación)
  # p-valor > 0.05, no se rechaza la H0 -> Podemos confirmar la autocorrelación = 0

  dwtest(modelo.lineal,alternative = "two.sided",iterations = 1000)

#Test de Breusch-Godfrey (autocorrelación de orden superior)
  # Hipótesis nula: no hay autocorrelación de orden x
  # p-valor < 0.05, se puede rechazar la H0 -> puede haber autocorrelación de orden x
  # p-valor > 0.05, no se rechaza la H0 -> los residuos del modelo, no siguen autocorrelación de orden “2”

  bgtest(modelo.lineal,order = 2)
