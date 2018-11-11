# Sript de librerias necesarias y recomendables 
# para los talleres de las XJUR 22-23/nov/2018
# 20181110, amaurandi@um.es
#
# -----------------------------------------------

# Jueves -----------------------------------------------------------------------
#### Taller de Jesus Herranz: Evaluación de las medidas de capacidad predictiva obtenidas con técnicas de remuestreo mediante un test de significación
install.packages("e1071")
install.packages("pROC")
install.packages("caret")# si diese error, se puede instalar desde synaptic (gnu/linux) buscando "CRAN caret": r-cran-caret

#### Taller de Ant Sanc Chinchon: Creación de mapas interactivos con R y Leaflet
install.packages("opencage")
install.packages("leaflet")
install.packages("tidyverse")
install.packages("htmlwidgets")
install.packages("rworldmap")
install.packages("sp")
install.packages("sf", dep=T) # ¿?
# crear una cuenta gratuita de opencage aquí -> https://opencagedata.com/pricing
# ejecutar esto para guardar la api key que obtengan después del registro en el Renviron:
# cat("OPENCAGE_KEY=COPIA-AQUI-TU-API-KEY\n", file = file.path(normalizePath("~/"), ".Renviron"), append = TRUE)

#### Bojan Mihaljević: Redes Bayesianas con R
source("http://bioconductor.org/biocLite.R")
biocLite(c("graph", "RBGL", "Rgraphviz"), suppressUpdates = TRUE)
install.packages('gRain')
install.packages('bnlearn')
install.packages('bnclassify')

# Viernes -----------------------------------------------------------------------
#### Francisco Rodriguez: Text Mining & NLP con R: Desde el análisis teóricos de textos en Esperanto hasta las Aplicaciones Empresariales con shiny
# una cpu de 8gb...
install.packages("readr")
install.packages("stringi")
install.packages("stringr")
install.packages("dplyr")
install.packages("tidytext")
install.packages("tidyr")
install.packages("ngram")
install.packages("data.table")
install.packages("topicmodels", dep=TRUE) # necesita gsl
install.packages("NLP")
install.packages("tm")
install.packages("h2o")



#### Taller de Emilio Lopez Cano: Análisis de correspondencias con R: aplicación a (micro) datos de encuestas
install.packages("readxl")
install.packages("FactoMineR")
install.packages( "factoextra")
install.packages( "dplyr")
install.packages( "gplots")
install.packages("corrplot")
install.packages( "knitr")
install.packages( "tidyr")
install.packages( "ggplot2")
install.packages("usethis") # No muy importante
 
