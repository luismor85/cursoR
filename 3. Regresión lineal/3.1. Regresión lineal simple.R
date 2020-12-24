###################################
#MODELO DE REGRESIÓN LINEAL SIMPLE#
###################################

#Teoría: https://rpubs.com/PacoParra/293399
#Teoría: https://rpubs.com/Joaquin_AR/254575
#Teoría: https://fhernanb.github.io/libro_regresion/rls.html

--------------------------------

#Definimos el modelo: V1 ~ V2

--------------------------------  

#Análisis exploratorio
head(BaseDatos)
summary(BaseDatos)

--------------------------------
#Correlación entre las variables
  #Diagrama de dispersión de dos variables (Distintas formas)
  library(ggplot2)

  pairs(V1~V2, main='Gráficos de dispersión', col='blue', col.axis='black')
  
  plot(V1~V2)

  ggplot(data = BaseDatos, mapping = aes(x = V1, y = V2)) +
    geom_point(col = "blue", size = 2) +
    labs(title = "Diagrama de dispersión", x = "Diámetro", y = "Volumen") +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5)) + 
    geom_smooth(method = "lm", se = FALSE, col ="grey")
  
  
  ggplot(data = BaseDatos, mapping = aes(x = V1, y = V2)) +
    geom_point(aes(colour = factor(V4)), size = 2) +
    labs(title = "Diagrama de dispersión", x = "Diámetro", y = "Volumen") +
    theme_bw() +
    theme(plot.title = element_text(hjust = 0.5)) + 
    geom_smooth(method = "lm", se = FALSE, col ="grey")
  
    #¿Dicotómicas? Mejor usar boxplot
    plot(V1~Vdicot)
    boxplot(V1~Vdicot)


  #Coeficientes de correlación: 
    # method = "pearson" -> Relación lineal
    # method = "spearman" -> Relación monótona
    
    cor(x=V1,y=V2, method = "pearson")
    cor(x=V1,y=V2, method = "spearman")
    
    -----------
    
    cor.test(x = V1, y = V4, method = "pearson", digits = 3)
    cor.test(x = V1, y = V4, method = "spearman", digits = 3)
    
  #Preferibe valores altos (cercanos a 0)
  #Significativo cuando el p-valor < 0.05

-------------------------------------------------------------

#Estimación de un modelo de regresión lineal simple:
  #Significatividad modelo cuando p-valor < 0.05
  #R-squared indica la capacidad de explicación que la independiente posee sobre la dependiente (preferible cercano a 1)
  #Significatividad en test F = modelo válido y útil
modelo.lineal <- lm(V1~V4)
summary(modelo.lineal)

plot(V1~V4)
abline(modelo.lineal)

------------------------------------------------------------

#Intervalo de confianza
confint(modelo.lineal, "V4", level = 0.95)

-----------------------------------------------------------


