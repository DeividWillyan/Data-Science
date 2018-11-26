# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")

length(str)
str

# grep()
grep("ex", str, value = F) # Value F devolve o indice do vetor
grep("ex", str, value = T) # Value T devolve a string encontrada
grep("\\d", str, value = F) # \\d somente digitos
grep("\\d", str, value = T) 


# grepl()
grepl("\\d+", str)
grepl("\\D", str)


# gsub
gsub("em", "|", str) # substitui "em" por "|" em todas ocorrencias 
gsub("ex", "EX", str, ignore.case = T) # ignora camel case


# sub()
sub("em", "EM", str) # substitui somente na primeira ocorrencia em cada indice do vetor


# regexpr()
frase <- "Isso é uma string."
regexpr(pattern = "u", frase) # verifica em qual indice se encontra o pattern dentro da string | Devolve um vetor


# gregexpr()
gregexpr(pattern = "u", frase) # Faz o mesmo que o anterior mas devolve uma lista



str2 <- c("2678 é maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", "", str2) # remode tudo que é digito
gsub("\\D", "", str2) # remove tudo que não é digito
gsub("\\s", "", str2) # remove todos espaços
gsub("[iot]", "Q", str2) # substitui as letras, i, o e t por Q
gsub("[[:punct:]]", "", str2) # remove todas pontuações 
gsub("[^@]", "", str2) # remove tudo , exceto o @






