# Exercício 1 -Crie um vetor com 12 números inteiros
vetor = c(1:12)
vetor

# Exercício 2 -Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
matriz = matrix(c(1:16), nrow = 4, ncol = 4)
matriz

# Exercício 3 -Crie uma lista unindo o vetor e matriz criados anteriormente
lista = list(vetor, matriz)
lista

# Exercício 4 -Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
df = data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
df

# Exercício 5 -Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
colnames(df) <- c("config", "esfc", "chang")
df

# Exercício 6 -
# a) Imprima na tela o dataframe iris. 
df_iris = data.frame(iris)
df_iris

# b) verifique quantas dimensões existem no dataframe iris. 
dim(df_iris)

# c) imprima um resumo do dataset.
summary(df_iris)

# Exercício 7 -Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(df_iris$Sepal.Length, df_iris$Sepal.Width)

# Exercício 8 -Usando s função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
df_iris_2 = subset(df_iris, df_iris$Sepal.Length > 7)
df_iris_2

# Exercícios 9 (Desafio) -Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), 
# divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
install.packages("dplyr")
library("dplyr")

# Dica 2: consulte o help para aprender como usar a função slice()
?slice

df_iris_copy = slice(df_iris)
df_iris_copy

df_iris_15_linhas = slice(df_iris_copy, 1:15)
df_iris_15_linhas

# Exercícios 10 -Use a função filter no seu novo dataframe criado no item anterior 
# e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch() para aprender como usar a função filter
RSiteSearch("filter")

df_sepal_6 = filter(df_iris_15_linhas, df_iris_15_linhas$Sepal.Length > 6)
df_sepal_6