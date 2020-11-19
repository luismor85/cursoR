##########################
#SELECCIÓN DE PREDICTORES#
##########################

#Fusilar: https://rpubs.com/Joaquin_AR/242707


#Modelo: V1~V2+V3+V4......V100
  
---------¡PROBLEMAS!-----------------------
  
  #Posible correlación de predictores
  #Variables que no aportan nada al modelo (ruido)
  #Grados de libertad insuficientes
  
  #Si tenemos muchas variables, lo mejor es deshacernos de aquellas que no nos interesen.
  
  #(Best) Subset selection: evaluar los posibles modelos que se pueden crear por combinación de los predictores.
  #No recomendado para ser usado con más de 10 variables