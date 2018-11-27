# Exercício 1 -Crie uma função que receba vetores como parâmetro, converta-os em um dataframe e imprima

func1 <- function(...) {
  df = data.frame(cbind(...))
  print(df)
}

v1 <- c(1:3)
v2 <- c(4:6)
func1(v1,v2)


# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros e calcule a media de cada linha

matriz <- matrix(1:16, nrow = 4, ncol = 4, byrow = T) # byrow = T significa que a orientação de preenchimento sera por Linha
apply(matriz, 1, mean) # 1 é Linha e 2 é Coluna


# Exercício 3 -Considere o dataframe abaixo. Calcule a media por disciplina.

escola <-data.frame(Aluno = c('Alan', 'Alice', 'Alana', 'Aline', 'Alex', 'Ajay'),
                     Matemática = c(90, 80, 85, 87, 56, 79),
                     Geografia = c(100, 78, 86, 90, 98, 67),
                     Química = c(76, 56, 89, 90, 100, 87))

escola
round(apply(escola[, c(2, 3, 4)], 2, mean)) # todas as linhas da matriz escola e as colunas 2,3 e 4.


# Exercício 4 -Cria uma lista com 3 elementos, todos numéricos e calcule a soma de todos os elementos da lista

lista_numerica = list(1,2,3)
do.call(sum, lista_numerica)


# Exercício 5 -Transforme a lista anterior um vetor

unlist(lista_numerica)


# Exercício 6 -Considere a string abaixo. Substitua a palavra textos por frases
      
str <-c("Expressoes", "regulares", "em linguagem R", "permitem a busca de padroes", 
        "e exploracao de textos","podemos buscar padroes em digitos","como por exemplo","10992451280")

pattern_init <- 'textos'
pattern_finl <- 'frases'
gsub(pattern_init, pattern_finl, str)


# Exercício7 -Usando o dataset mtcars, crie um gráfico com ggplot do tipo scatter plot. 
# Use as colunas disp e mpg nos eixos x e y respectivamente

library(ggplot2)

head(mtcars)

ggplot(mtcars, aes(x = disp, y = mpg)) +    
  geom_point() 


# Exercício8 -Usando o exemplo anterior, explore outros tipos de gráficos

plot_feito_1 <- ggplot(mtcars, aes(x = disp, y=mpg))
plot_feito_2 <- ggplot(mtcars, aes(x = disp))

plot_feito_1 + geom_point() # Scatter plot
plot_feito_1 + geom_col() # Colunas
plot_feito_2 + geom_histogram(stat = "bin", bins = 30) # Histograma
