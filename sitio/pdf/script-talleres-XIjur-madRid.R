# Sript de librerias necesarias y recomendables 
# para los talleres de las XI JUR 15/nov/2019
# http://r-es.org/XIjuR
# 11jcomite-organizador@r-es.org
#
# -----------------------------------------------

# TODOS LOS TALLERES SON EN PARALELO, VIERNES 15 DE NOVIEMBRE DE 2019, DE 15 HORAS A 17.25

#### Taller T1 Análisis de datos funcionales, regresión, clasificación y clustering funcional
#### Mediante la librería fda.usc

install.packages("fda.usc")
install.packages(c("e1071", "randomForest", "nnet"))

#### Taller T2 Herramientas de R para la investigación de mercados (José Ignacio Casas Álvarez)
##############################################################################
#####     XI JORNADAS DE USUARIOS DE R. MADRID, 14-16 NOVIEMBRE 2019     #####
#####     TALLER HERRAMIENTAS DE R PARA LA INVESTIGACI?N DE MERCADOS     #####
#####                        REQUISITOS TALLER 2                         #####
#####                      POR Jos? Ignacio Casas                        #####
##############################################################################

#=========================#
# 1. CONFIGURACION DEL PC #
#=========================#
# R version 3.6.1 (2019-07-05)
# RStudio Version 1.1.463


#==============================================#
# 2. PAQUETES A INSTALAR PREVIAMENTE AL TALLER #
#==============================================#

# 2.1. VECTOR DE PAQUETES
#========================
paquetes_taller2 <- c (
  "AlgDesign",
  "arules",
  "CAinterprTools",
  "car",
  "cluster",
  "conjoint",
  "ChannelAttribution",
  "eRm",
  "factoextra",
  "fpc",
  "ggthemes",
  "ltm",
  "markovchain",
  "mirt",
  "mlogit",
  "NbClust",
  "pheatmap",
  "pricesensitivitymeter",
  "reshape2",
  "rfm",
  "survival",
  "tidyverse"
)

# 2.2. INSTALACI?N
#=================
install.packages (paquetes_taller2)


#====================================================================#
# 3. DATASETS A INCORPORAR (NO INCLUIDOS EN LOS PAQUETES ANTERIORES) #
#====================================================================#

# 3.1. dataset_clus. DATASET PREPARADO EX-PROFESO, DESCARGABLE DESDE GitHub
#==========================================================================
ruta_dataset1 <- "https://github.com/JI-Casas/R4Social_Marketing_Research/raw/master/dataset_clus.RData"		# ruta en internet
load (url (ruta_dataset1))									# Incorporamos del data.frame "dataset_clus"
save (dataset_clus, file = "dataset_clus.RData")			# Lo guardamos en nuestro directorio de trabajo
load (file = "dataset_clus.RData")							# Para incorporar el dataset desde nuestro directorio de trabajo
# Las variables son:
# id:				chr - identificador de cada caso/objeto
# habitat:			Ord.factor w/ 7 levels - tama?o del h?bitat
# item1:			logi - Ha adquirido este item
# item2:			logi - Ha adquirido este item
# item3:			logi - Ha adquirido este item
# item4:			logi - Ha adquirido este item
# item5:			logi - Ha adquirido este item
# online_shopping:	num - % de compras online
# sexo:				Factor w/ 2 levels "Hombre","Mujer"
# edad:				num
# ingresos:			Ord.factor w/ 11 levels - Nivel de ingresos
# estudios:			Ord.factor w/ 6 levels - Nivel de estudios
# estatus:			Ord.factor w/ 5 levels - Estatus social

# 3.2. dataset para el Conjoint Analysis
#=======================================
cbc_df <- read.csv (										# convertimos el ".csv" en data.frame
  "http://goo.gl/5xQObB",									# ruta del fichero en formato ".csv"
  colClasses = c (											# cualificamos las variables
    seat = "factor",
    price = "factor",
    choice = "integer")
)
save (cbc_df, file = "cbc_df.RData")						# Lo guardamos en nuestro directorio de trabajo
load (file = "cbc_df.RData")								# Para incorporar el dataset desde nuestro directorio de trabajo

#### Taller T3 Tips, trucos y algunos paquetes para programación eficiente en R (Adolfo Álvarez)
install.packages(c("tidyverse", "purrr", "furrr", "pryr",
                   "benchmarkme", "tictoc", "microbenchmark",
                   "rbenchmark", "bench", "profvis", "janitor",
                   "lintr", "styler"))



#### Taller T4 Introducción al análisis reticular de coincidencias (Luis Martínez Uribe)

install.packages("tidyverse")
install.packages("haven")
install.packages("igraph")
install.packages("https://sociocav.usal.es/me/R/netCoin_1.1.23.tar.gz ", repos = NULL, type = "source")

