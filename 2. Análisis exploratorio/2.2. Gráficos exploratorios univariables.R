####################################
#GRÁFICOS EXPLORATORIO UNIVARIABLES#
####################################

#Si queremos comparar entre dos imágenes <---- par(mfrow = c(1,2))  

#Boxplot
  #col= cambia el color
  #abline(h =) establece una línea horizontal
  
  boxplot(#basedatos$`Variable`, col = "orange")
  abline(h = 4.18, col = "red")
  
  boxplot(#basedatos$`Variable`, col = "red")
  abline(h = 2.3, col = "blue")
  boxplot(#basedatos$`Variable`, col = "grey")
  boxplot(#basedatos$`Variable`, col = "grey")

#Histogram
  #breaks= cambia el número de barras
  #rug muestra la densidad en cada valor
  #abline(v =) establece una línea vertical
  
  hist(#basedatos$`Variable`, col = "grey", main = "Descripción")
  rug(#basedatos$`Variable`)
  abline(v = 83, lwd = 2)
  abline(v = median(#basedatos$`Variable`), col = "red", lwd = 4)
  
  hist(#basedatos$`Variable`, col = "grey", breaks = 10)
  hist(#basedatos$`Variable`, col = "grey")

#Barplot (para variables categóricas)
  barplot(table(#basedatos$`Variable`), col = "green", main = "Descripción")
  