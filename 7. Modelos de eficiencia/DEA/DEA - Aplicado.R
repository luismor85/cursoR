Ejercicio DEA - índice

#Instalar paquete DEA
install.packages("deaR")
library(deaR)

#Bases de datos
  #Sí -> Datos fuzzy? Lógica Fuzzy
  #No -> Series temporales? -> Sí -> Índice Malmquist
                           #-> No -> Dea convencional

#DEA CONVENCIONAL

BaseDEA <- read_data(datadea = DEA,
                     dmus=1,
                     inputs = 2:3,
                     outputs = 4)

resultDEA <- model_basic(BaseDEA,
                         orientation = "oo",
                         rts = "crs") #orientación: io es input 

efficiencies(resultDEA) #Puntuaciones de eficiencia
references(resultDEA) #Conjunto de referencias de las DMUs ineficientes
rts(resultDEA) #Rendimientos a escala de las DMUs
multipliers(resultDEA) #Multiplicadores o pesos del modelo DEA

summary(resultDEA) #Conjunto de resultados

#Representación

plot(resultDEA)


BaseDEA2 <- read_data(datadea = DEA,
                     dmus=1,
                     inputs = 5:6,
                     outputs = 7)

resultDEA2 <- model_basic(BaseDEA2,
                         orientation = "oo",
                         rts = "crs") #orientación: io es input, oo es output

plot(resultDEA2)

DEA2 <- DEA
DEA2$Output3.5 = DEA2$Output3.5+0.01
DEA2$Output3.3 = DEA2$Output3.3+0.01

BaseDEA3 <- read_data(datadea = DEA2,
                      dmus=1,
                      inputs = 9:11,
                      outputs = 12:14)

resultDEA3 <- model_basic(BaseDEA3,
                          orientation = "io",
                          rts = "crs") #orientación: io es input, oo es output, dir es direccional

plot(resultDEA3)

BaseDEA3bis <- read_data(datadea = DEA2,
                      dmus=1,
                      inputs = c(9,10,11,14),
                      outputs = c(12,13))

resultDEA3bis <- model_basic(BaseDEA3bis,
                          orientation = "oo",
                          rts = "crs") #orientación: io es input, oo es output

plot(resultDEA3bis)


#Supereficiencia

resultDEA4 <- model_supereff(BaseDEA3bis,
                             orientation = "oo",
                             rts = "crs")

plot(resultDEA4)



BaseDEA <- read_data(datadea = DEA,
                     dmus=1,
                     inputs = c(2, 3, 5, 6, 7, 9, 10, 11),
                     outputs = c(4, 8, 12, 13, 14)) #La base de datos tiene los DMUs en la columna 1, y cuenta con 8 inputs y 5 outputs

help(read_data)

#Representación

plot(resultDEA)








#DEA DIFUSO

BaseDEADif <- read_data_fuzzy(DEA,
                     dmus=1,
                     inputs = 2:3,
                     outputs = 4)

resultDEA <- model_basic(BaseDEA,
                         orientation = "io",
                         rts = "crs") #orientación: io es input 

efficiencies(resultDEA) #Puntuaciones de eficiencia
references(resultDEA) #Conjunto de referencias de las DMUs ineficientes
rts(resultDEA) #Rendimientos a escala de las DMUs
multipliers(resultDEA) #Multiplicadores o pesos del modelo DEA

summary(resultDEA) #Conjunto de resultados


BaseDEA <- read_data(datadea = DEA,
                     dmus=1,
                     inputs = c(2, 3, 5, 6, 7, 9, 10, 11),
                     outputs = c(4, 8, 12, 13, 14)) #La base de datos tiene los DMUs en la columna 1, y cuenta con 8 inputs y 5 outputs

help(read_data)
