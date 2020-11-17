#MATRIZ DE CORRELACIÓN#

https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html
https://bowenjones.github.io/Projects/R_cookbook/Chapter_13.html
https://www.youtube.com/watch?v=lkA_bauTB_s
https://rpubs.com/camilamila/correlaciones
http://www.sthda.com/english/wiki/correlation-matrix-a-quick-start-guide-to-analyze-format-and-visualize-a-correlation-matrix-using-r-software

#Tabla 1 - Estadísticos descriptivos
install.packages("pastecs")
library(pastecs)
stat.desc(BD)

#Hipótesis: los destinos inteligentes apuestan por estrategias de innovación y accesibilidad
#Tabla 2- Matriz de correlación Pearson
BD2 <- BD
BD2$Municipios = NULL
BD2$TourOv = NULL
BD2$OcupHot = NULL
BD2$ABOccuRate = NULL
BD2$SharePernoc = NULL
BD2$ShABRentals = NULL
BD2$TourC = NULL
BD2$Pop = NULL
BD2$GDPpc = NULL
BD2$MovA = NULL
BD2$SyP = NULL

library(corrplot)
BaseDatos.cor <- cor(BD2, method = "pearson")
round(BaseDatos.cor, digits = 2)
corrplot(BaseDatos.cor)

corrplot(BaseDatos.cor, method ="color",
         shade.col = NA, tl.col="black", number.cex = 0.85,
         tl.srt = 45,
         addCoef.col = "black", addcolorlabel = "no",
         order ="AOE",
         type ="lower", diag=FALSE)

#



res1 <- cor.mtest(BD2, conf.level = .95)
corrplot()



corrplot(BaseDatos.cor, method ="shade",
         shade.col = NA, tl.col="black",
         tl.srt = 45, col = col(200),
         addCoef.col = "black", addcolorlabel = "no",
         order ="AOE",
         type ="lower")




BaseDatos <- Base_datos




BaseDatosNA <- na.omit(Base_datos)
BaseDatos.cor <- cor(BaseDatos, method = "pearson")



#Tabla 1 - Estadísticos descriptivos#
install.packages("pastecs")
library(pastecs)
stat.desc(BaseDatos)

#Hipótesis: los destinos urbanos invierten más en innovación
BaseDatos <- Base_datos
BaseDatos$Municipios = NULL
BaseDatos$Municipios = NULL
BaseDatos$GastoM = NULL
BaseDatos$MovAerop = NULL
BaseDatos$Pob = NULL
BaseDatos$EmpTur = NULL
BaseDatos$PIBpc = NULL




head(BaseDatos)
BaseDatos$Municipios = NULL
BaseDatos$GastoM = NULL
BaseDatos$MovAerop = NULL
BaseDatos$MovAerop = NULL
BaseDatosNA.cor <- cor(BaseDatosNA, method = "pearson")






#Boxplot
boxplot(S.S~AccAward, data = BaseDatos)
  #ó
  boxplot(S.S ~ AccAward, data = BaseDatos,
          xlab="Descripción", ylab="Descripción",
          col="steelblue")

  boxplot(S.S~AccAward)

  hist(subset(BaseDatos, SyP == "0")$FinancIn)



# Matriz de correlación
install.packages("corrplot")
install.packages("round")
library(corrplot)
library(round)

head(BaseDatos)
BaseDatos$Municipios = NULL
BaseDatos$GastoM = NULL
BaseDatos$MovAerop = NULL
BaseDatos.cor <- cor(BaseDatos, method = "pearson")

https://www.youtube.com/watch?v=lkA_bauTB_s




ggplot(data=BaseDatos, aes(x=S.S,
                           y=AccAward)) +
                           geom_point()




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
