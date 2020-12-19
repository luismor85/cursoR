###########
#PLS - SEM#
###########

#Tutoriales
#Lavaan: https://lavaan.ugent.be/index.html
#SemPaths: https://www.rdocumentation.org/packages/semPlot/versions/1.1.2/topics/semPaths
#https://lavaan.ugent.be/tutorial/tutorial.pdf
#https://stats.stackovernet.xyz/es/q/25149
#http://www.conicit.go.cr/prensa/boletincyt/boletines_cyt/Boletin_184/Ecuaciones-Estructurales.aspx
#https://www.ianruginski.com/post/sem_handout6/

#PAQUETES NECESARIOS
install.packages("lavaan")
install.packages("semPlot")
install.packages("semTools")
library("lavaan")
library("semPlot")
library("semTools")

  BaseDatos <- data.frame(BaseDatos, row.names = "Municipios")
  BD <- na.omit(BaseDatos)

##PREPARACIÓN DE LA BASE DE DATOS
      BD$TourOv = NULL
      BD$TourC = NULL
      BD$SharePernocPop <- (BD$SharePernoc/BD$Pop)
      BD$ShABRentalsPop <- (BD$ShABRentals/BD$Pop)
  

#MODELO PLS - SEM
  
    #Definimos el modelo:
    
    Modelo1 <- "Compet =~ OcupHot + ABOccuRate + SharePernoc + ShABRentals + GDPpc
          Comparative =~ Pop + MovA + S.S
          Accesibility =~ AccAward + BookHSR + InfoWAcc + Pop.D
          Innov =~ SmrtF + InnC
          Compet ~ Comparative + Accesibility + Innov
          "

  #Cálculo de PLS:
    SEM <- lavaan::sem(Modelo1, data=BD, std.lv=TRUE, orthogonal = FALSE, estimator="MLR")
    SEM
    
    #Transformación de variables
    lgBD <- log(BD+1) #Transformación logarítmica de la base de datos
    
    SEM <- lavaan::sem(Modelo1, data=lgBD, std.lv=TRUE, orthogonal = FALSE, estimator="MLR")
    lavaan::summary(SEM, fit.measures=TRUE)
    SEM
    
    lavaan::fitMeasures(SEM, 
                        c('nfi','rmr','tli','cfi','rmsea','gfi','agfi'))
    
    #RMSEA y SRMR: indicadores de un buen ajuste con valores inferiores a .05 
    #NFI: Ha de alcanzar un valor mínimo de .90.
    #CFI: oscila entre 0 y 1, siendo el valor de .9 el mínimo requerido
    
    #Composite Reliability
    reliability(SEM, return.total = FALSE, dropSingle = TRUE,
                omit.imps = c("no.conv", "no.se"))
                #Composite reliability must be higher than 0.6 (Fornell and Larcker, 1981)
    
    #Coeficientes con pesos estandarizados
      semPaths(SEM, what = "path", whatLabels = "std", style = "lisrel", layout = "spring",
               )
  
    Modelo2 <- "Compet =~ OcupHot + ABOccuRate + SharePernoc + ShABRentals + GDPpc
        Comparative =~ Pop + MovA
        Accesibility =~ AccAward + Pop.D + InfoWAcc + BookHSR
        Esp =~ S.S
        Innov =~ SmrtF + InnC
        Compet ~ Comparative + Accesibility + Innov
        Comparative ~ Esp
        Accesibility ~ Esp
        Innov ~ Esp
        "
    