###########################
#Confianza de la regresión#
###########################


# Test de Shapiro-Wilk (normalidad de los residuos)
  # Hipótesis nula: normalidad muestra. 
  # p-valor < 0.05, la hipótesis nula es rechazada - (los datos no vienen de una distribución normal). 
  # p-valor > 0.05, no puede rechazarse la hipótesis nula - (asumimos que la distribución de nuestra muestra es normal)

shapiro.test(modelo.lineal$residuals)

# Test de Breush-Pagan (homocedasticidad de los residuos)
  # Hipótesis nula: No existe heteroscedasticidad (los errores de la regresión no tienen varianza constante)
  # Si p-valor <0.05, es rechazada la hipótesis nula (heterocedasticidad)
  # Si p-valor > 0.05, no se rechaza la hipótesis nula: la varianza de los residuos es homocedastica

library(lmtest)
bptest(modelo.lineal)

#Test de Durbin-Watson (autocorrelación)
  # Hipótesis nula: No hay autocorrelación de primer orden
  # p-valor < 0.05, se puede rechaza la H0 -> no se puede rechazar autocorrelación de primer orden
  # p-valor > 0.05, no se rechaza la H0 -> se puede rechazar la presencia de autocorrelación (No se rechaza la H0)

dwtest(modelo.lineal,alternative = "two.sided",iterations = 1000)

  #Test de Breusch-Godfrey (autocorrelación de orden superior)
  # Hipótesis nula: no hay autocorrelación de orden x
  # p-valor < 0.05, se puede rechazar la H0 -> puede haber autocorrelación de orden x
  # p-valor > 0.05, no se rechaza la H0 -> los residuos del modelo, no siguen autocorrelación de orden “2”

bgtest(modelo.lineal,order = 2)
