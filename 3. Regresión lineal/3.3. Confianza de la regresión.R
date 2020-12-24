#########################
#Diagnóstico del modelo#
########################

# Teoría: https://www.diegocalvo.es/analisis-de-regresion-simple-en-r/
         #http://webspace.ship.edu/pgmarr/Geo441/Lectures/Lec%205%20-%20Normality%20Testing.pdf

V1 <- BaseDatos$OcupHot
V2 <- BaseDatos$ABOccuRate

# Normalidad de la muestra
  #Un primer análisis nos dará pistas de la  normalidad de la muestra.
  hist(V1)
  hist(BaseDatos[,2]) #siendo 5 la columna número 5 del dataframe
  
  library(ggplot2)
  
  ggplot(data = BaseDatos, aes(x = V2)) +
    geom_histogram(aes(y = ..density.., fill = ..count..)) +
    scale_fill_gradient(low = "#DCDCDC", high = "#7C7C7C") +
    stat_function(fun = dnorm, colour = "firebrick",
                  args = list(mean = mean(V2),
                              sd = sd(V2))) +
    ggtitle("Histograma con curva normal teórica") +
    theme_bw()
  
#QQPlot (Gráfico cuantil - cuantil)
  qqnorm(V2, pch=20, main='QQplot')
  qqline(V2)
  
  #Test de normalidad
  
  #Saphiro-Wilk: test de normalidad para muestras < 50 observaciones
    # Hipótesis nula (H0): La muestra posee una distribución estadísticamente normal.
    # p-valor < 0.05, la hipótesis nula es rechazada (no podemos garantizar que es una distribución normal)
    # p-valor > 0.05, la hipótesis nula no se rechaza (la muestra tiene una distribución estadísticamente normal)
  
    shapiro.test(x = V2)
  
  #Kolmogorov-Smirnov -> Lillefors: test de normalidad para muestras > 50 observaciones
    library("nortest")
    lillie.test(x = V1)
  
  #Jarque-Bera
    library("tseries")
    jarque.bera.test(x = V1)
    
# Test de Breush-Pagan (homocedasticidad de los residuos)
  # Ho: La varianza de los residuos es homocedástica (los errores de la regresión tienen varianza constante)
  # Si p-valor < 0.05, es rechazada la hipótesis nula. Heterocedasticidad que debemos corregir.
  # Si p-valor > 0.05, no se rechaza la hipótesis nula: la varianza de los residuos es homocedastica

  library(lmtest)
  bptest(modelo.lineal.m)

#Test de Durbin-Watson (autocorrelación)
  # Hipótesis nula: Autocorrelación de primer orden = 0
  # p-valor < 0.05, se puede rechazar la H0 -> debemos rechazar la hipótesis nula de ausencia de autocorrelación en el modelo (problema de autocorrelación)
  # p-valor > 0.05, no se rechaza la H0 -> Podemos confirmar la autocorrelación = 0

  dwtest(modelo.lineal.m,alternative = "two.sided",iterations = 1000)

#Test de Breusch-Godfrey (autocorrelación de orden superior)
  # Hipótesis nula: no hay autocorrelación de orden x
  # p-valor < 0.05, se puede rechazar la H0 -> puede haber autocorrelación de orden x
  # p-valor > 0.05, no se rechaza la H0 -> los residuos del modelo, no siguen autocorrelación de orden “2”

  bgtest(modelo.lineal,order = 2)
