########################
#GUARDAR BASES DE DATOS#
########################

#Diferentes formatos: txt, xls, csv

write.table(BaseDatos, file = "BaseDatos2.txt", sep = ",", row.names = FALSE)
write.table(BaseDatos, file = "BaseDatos.xls", row.names = FALSE)
write.csv(BaseDatos, file = "BaseDatos.csv", row.names = FALSE)