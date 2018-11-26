# De onde vem as funções? Pacotes (conjuntos de funções)
# Quando você inicia o RStudio, alguns pacotes são 
# carregados por padrão

search() # Pacotes carregados

install.packages(c("ggvis", "tm", "dplyr"))
library(ggvis)
library(tm)
require(dplyr)

search()
?require
detach(package:dplyr)
?attach

ls(pos = "package:tm") # exibe os metodos do pacote
ls(getNamespace("tm"), all.names = TRUE)

lsf.str("package:tm") # Exibe os metodos com maior detalhe
lsf.str("package:ggplot2")
library(ggplot2)
lsf.str("package:ggplot2")


## R possui um conjunto de datasets preinstalados. Verificar datasets package

library(MASS)
data()

?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

attach(iris) # Aloca a variavel Iris na memoria
sum(Sepal.Length)
