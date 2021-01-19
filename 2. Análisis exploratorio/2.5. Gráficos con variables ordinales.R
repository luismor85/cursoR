##################################
#GRÁFICOS CON VARIABLES ORDINALES#
##################################

EJEMPLO: Cuellos de jirafa (Muy largo, largo, corto, muy corto)

cuellos <- c("Corto", "Largo", "Corto", "Muy corto", "Muy Largo", "Muy corto", "Muy Largo", "Muy Largo", "Muy Largo", "Muy Largo", "Corto", "Muy Largo", "Muy corto", "Muy Largo", "Largo", "Muy Largo", "Largo", "Muy Largo", "Largo", "Muy Largo", "Corto", "Muy corto", "Corto", "Largo",  "Muy Largo", "Corto", "Muy corto", "Muy corto", "Muy corto", "Corto", "Muy Largo", "Corto", "Muy Largo", "Corto", "Muy Largo", "Largo", "Muy Largo", "Muy corto", "Corto")
cuellos

#Frecuencia absoluta
  Fr.Abs = table(cuellos)
  Fr.Abs

#Frecuencia relativa
  Fr.Rel = prop.table(Fr.Abs)
  Fr.Rel

#Frecuencia absoluta acumulada
  Fr.Acum = cumsum(Fr.Abs)
  Fr.Acum
  
#Frecuencia relativa acumulada
  Fr.RAcum = cumsum(Fr.Rel)
  Fr.RAcum
  barplot(Fr.Acum, main = "Diagrama de frecuencia relativas acumuladas")
