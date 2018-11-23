### Strings

# String
texto <- 'Isso é uma string!'
texto

x <- as.character(3.14)
x
class(x)

# Concatenando Strings
nome <- 'Deivid'; sobrenome <- 'Willyan'
paste(nome, sobrenome)
cat(nome, sobrenome)

# Formatando a saída
sprintf('Hoje é dia %s, do mes de %s.', 23, 'Novembro')

# Extraindo parte da string
substr(texto, start = 12, stop = 17)
?substr

# Contando o número de caracteres
nchar(texto)

# Alterando a capitalização
tolower('Deivid Willyan')
toupper('Deivid Willyan') 

# usando stingr
library(stringr)

# Dividindo uma string em caracteres
strsplit('Histograma desta frase', NULL)
?strsplit
strsplit('Histograma desta frase', ' ')


# Trabalhando com strings
string1 <- c('Esta é a primeira parte da minha string e será a primeira parte do meu vetor',
             'Aqui a string continua, mas será transformada na segunda parte do vetor.')
string1


string2 <- c('Precisamos testar outras strings - @???!$',
             'Cientista de Dados com R')
string2

# dicionando 2 strings
str_c(c(string1, string2), sep = '')

# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, 's')

# Localiza a primeira e última posição em que o caracter aparece
str_locate_all(string2, 'S')

# Substitui a primeira ocorrencia de um caracter
str_replace(string2, '\\s', '')

#Substitui todas as ocorrencias
str_replace_all(string2, '\\s', '')

# Detectando padrões nas strings
string1 <- '23 mai 2000'
string2 <- '1 mai 2000'
padrao <- 'mai 20'
grepl(pattern = padrao, x = string1)
padrao <- 'mai20'
grepl(pattern = padrao, x = string1)

# Impotando arquivo txt
arquivo <- read.csv("http://www.gutenberg.org/cache/epub/100/pg100.txt")

head(arquivo)
tail(arquivo)

str_count(arquivo, '7')
str_locate_all(arquivo, '7')

# Criando funções para manipular strings

strtail <- function(s,n=1) {
  if(n<0)
    substring(s,1-n)
  else
    substring(s,nchar(s)-n+1)
}

strtail('String de teste', 6)














