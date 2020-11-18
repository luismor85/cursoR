###################################
#MODELO DE REGRESIÓN LINEAL SIMPLE#
###################################

#Teoría: https://rpubs.com/PacoParra/293399

#Análisis exploratorio
head(BaseDatos)
summary(BaseDatos)

#Diagrama de dispersión de dos variables
library(ggplot2)

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

plot(V1~V4)
boxplot(V1~V4)


#Coeficiente de correlación de Pearson
  #Preferibe valores altos (cercanos a 0)
  #Significativo cuando el p-valor < 0.05
cor.test(x = V1, y = V2, method = "pearson", digits = 3)

#Estimación de un modelo de regresión lineal simple:
  #Significatividad modelo cuando p-valor < 0.05
  #R-squared indica la capacidad de explicación que la independiente posee sobre la dependiente (preferible cercano a 1)
  #Significatividad en test F = modelo válido y útil
modelo.lineal <- lm(V1~V4)
summary(modelo.lineal)


#Intervalo de confianza
confint(modelo.lineal, "V4", level = 0.95)
