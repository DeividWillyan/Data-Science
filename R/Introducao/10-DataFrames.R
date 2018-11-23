### DataFrames

# Criando um dataframe vazio
df <- data.frame()
class(df)
df

# Criando vetores vazios
nomes <- character()
idades <- numeric()
datas <- as.Date(character())
codigos <- integer()

df <- data.frame(c(nomes, idades, datas, codigos))
df

# Criando vetores
pais = c('EUA', 'Brasil', 'Inglaterra', 'Espanha')
nome = c('Deivid', 'Willyan', 'Rodrigues', 'Fabiano')
altura = c(1.78, 1.80, 1.60, 1.90)
codigo = c(5001, 2183, 4702, 7940)

# Criando um dataframe de diversos vetores
pesquisa = data.frame(pais, nome, altura, codigo)
pesquisa

# Adicionando um novo vetor a um dataframe existente
olhos = c('Verde', 'Azul', 'Castanhos', 'Azul')
pesq = cbind(pesquisa, olhos) # inclui mais uma coluna ao dataframe
pesq

# Informações sobre o dataframe
str(pesq)
dim(pesq)
length(pesq)

# Obtendo um vetor de um dataframe
pesq$nome

# Extraindo um único valor
pesq[1,1]
pesq[3,2]

# Numero de Linhas e colunas
nrow(pesq)
ncol(pesq)

# Primeiros elementos do dataframe
head(pesq)
head(mtcars)

# Últimos elementos do dataframe
tail(pesq)
tail(mtcars)

# Data frames built-in do R
?mtcars
mtcars

# Filtro para um subset de dados que atendem a um criterio
pesq[altura < 1.65,]
pesq[altura < 1.65, c('codigo', 'olhos')]
pesq

colnames(pesq) <- c('var 1', 'var 2', 'var 3', 'var 4', 'var 5')
rownames(pesq) <- c('obs 1', 'obs 2', 'obs 3', 'obs 4')
pesq

# Importando arquivos

# read.xls() - excel
# read.mtp() - minitab
# read.spss() - spss
# read.table() - txt
# read.csv() - csv
# read.delim() - arquivos delimitados

?read.csv
df2 <- data.frame(read.csv(file = 'dframe.csv', header = TRUE, sep = ';'))
head(df2)
summary(df2)

df2$sexo
df2$profissao

plot(df2$vl_limite)

# combinando dataframes
df3 <- merge(pesq, df2)
df3

