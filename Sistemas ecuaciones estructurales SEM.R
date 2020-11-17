#########################
# SISTEMA DE ECUACIONES # 
#  ESTRUCTURALES (SEM)  #
#########################

https://brianmsm.github.io/manual-lavaan/primeros-pasos-en-el-analisis.html
https://www.cscu.cornell.edu/news/Handouts/SEM_fit.pdf
https://www.youtube.com/watch?v=ZnHY07TKMJ4

# paquetes a instalar
install.packages("lavaan")
install.packages("semPlot")
install.packages("semTools")

library("lavaan")
library("semPlot")
library("semTools")

#Cargar base de datos
Base_datos

head(Base_datos)
tibble::as_tibble(Base_datos)
names(Base_datos)
dplyr::glimpse(Base_datos)

#Especificación del modelo conceptual (primero unidimensional, luego bifactorial)
Onefactor<-'Accessibilidad =~ PremiosAc + PobDisc + InfoWACC + BookHSR + FinancIn + EmpInn'


Twofactor1<-"Competitiveness =~ OcupHot + ABOccuRate + SharePernoc + ShABRentals + EmpTur
         SmartIndicators =~ PremiosAc + PobDisc + InfoWACC + BookHSR + FinancIn + EmpInn"


Twofactor2<-"Comparative =~ Pob + PIBpc + MovAerop+ SyP
         SmartIndicators =~ PremiosAc + PobDisc + InfoWACC + BookHSR + FinancIn + EmpInn"

Fourfactor<-"Competitiveness =~ OcupHot + ABOccuRate + SharePernoc + ShABRentals + EmpTur
          ComparativeAd =~ Pob + PIBpc + MovAerop+ SyP
          Access =~ PremiosAc + PobDisc + InfoWACC + BookHSR
          Innov =~ FinancIn + EmpInn"

Fourfactor2<-"Competitiveness =~ OcupHot + ABOccuRate + SharePernoc + ShABRentals + EmpTur
          ComparativeAd =~ Pob + PIBpc + MovAerop+ SyP
          Access =~ PremiosAc + PobDisc + InfoWACC + BookHSR
          Innov =~ FinancIn + EmpInn

          Competitiveness =~ ComparativeAd + Access + Innov"


#realización del AFC para la primera estructura
CFAone <- lavaan::cfa(Onefactor,orthogonal=TRUE, data=Base_datos)
lavaan::summary(CFAone, fit.measures=TRUE)

#Análisis Factorial Confirmatorio
CFATwo1 <- lavaan::cfa(Twofactor1,orthogonal=FALSE, data=Base_datos)
lavaan::summary(CFATwo1, fit.measures=TRUE)
fitMeasures(CFATwo1)
semPaths(CFATwo1, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", layout="circle2")
semPaths(CFATwo1, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", style="lisrel")

#Análisis Factorial Confirmatorio
CFATwo2 <- lavaan::cfa(Twofactor2,orthogonal=FALSE, data=Base_datos)
lavaan::summary(CFATwo2, fit.measures=TRUE)
fitMeasures(CFATwo2)
semPaths(CFATwo2, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", layout="circle2")

#Análisis Factorial Confirmatorio
CFAFour <- lavaan::cfa(Fourfactor,orthogonal=FALSE, data=Base_datos)
lavaan::summary(CFAFour, fit.measures=TRUE)
fitMeasures(CFAFour)
semPaths(CFAFour, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", layout="circle2")

#Análisis Factorial Confirmatorio
CFAFour2 <- lavaan::cfa(Fourfactor2,orthogonal=FALSE, data=Base_datos)
lavaan::summary(CFAFour2, fit.measures=TRUE)
fitMeasures(CFAFour2)
semPaths(CFAFour2, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", layout="circle2")
semPaths(CFAFour2, intercepts = TRUE,edge.label.cex=1.5, optimizeLatRes = FALSE, groups = "lat",pastel = TRUE, exoVar = FALSE, sizeInt=5,edge.color ="black",esize = 4, label.prop=1,sizeLat = 9,"std", style="lisrel")

#Coeficientes con pesos no estandarizados
semPaths(CFAFour2, "model", "est", style = "lisrel")

#Coeficientes con pesos estandarizados
semPaths(CFAFour2, "model", "std", style = "lisrel")


fitMeasures(CFAFour, 
             c( 'rmr','rmsea','gfi','agfi', 'nfi','cfi' ) )

fitMeasures(CFAFour2, 
            c( 'rmr','rmsea','gfi','agfi', 'nfi','cfi' ) )
