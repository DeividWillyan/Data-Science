# Matrizes

# Criando Matrizes

#N�mero de Linhas
matrix (c(1,2,3,4,5,6), nrow = 2)
matrix (c(1,2,3,4,5,6), nrow = 3)
matrix (c(1,2,3,4,5,6), nrow = 6)

# N�mero de Colunas
matrix ( c ( 1,2,3,4,5,6), ncol = 2)

# Help
?matrix

# Matrizes precisam ter um n�mero par de valores
matrix( c (1,2,3,4,5), ncol = 2)

# Criando matrizes a partir de vetores e preenchendo a partir d
meus_dados = c(1:10)
matrix(data = meus_dados, nrow = 5, ncol = 2, byrow = T)

# Fatiando a Matriz
mat <- matrix(c(2,3,4,5), nrow = 2)
mat
mat[1,2]
mat[2,2]
mat[1,3]
mat[,2]

# Criando uma matriz diagonal
matriz = 1:3
diag (matriz)

# Extraindo vetor de uma matriz diagonal
vetor = diag(matriz)
diag(vetor)

# Transposta da matriz
W <- matrix(c(2,4,8,12), nrow = 2, ncol = 2)
W
t(W)
U <- t(W)
U
  
# Obtendo uma matriz inversa
solve(W)
  
# Multiplica��o de Matrizes
mat1 <- matrix(c(2,3,4,5), nrow = 2)
mat1
mat2 <- matrix(c(6,7,8,9), nrow = 2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# Multiplica��o Matriz com Vetor
x = c(1:4)
x
y <- matrix(c(2:5), nrow = 2)
x * y

# Nomeando a Matriz
mat3 <- matrix(c('Futebol', 'Nata��o', 'Campo', 'Piscina'), nrow = 2)
mat3
dimnames(mat3) = (list(c("Linha1", "Linha2"), c("Coluna1", "Coluna2")))
mat3

# Identificando linhas e colunas no momento da cria��o da matrix
matrix (c(1,2,3,4), nrow = 2, ncol = 2, dimnames = list(c("Linha 1", "Linha 2"), c("Coluna 1", "Coluna 2")))

# Combinando Matrizes
mat4 <- matrix(c(2,3,4,5), nrow = 2)
mat4
mat5 <- matrix(c(6,7,8,9), nrow = 2)
cbind(mat4, mat5)
rbind(mat4, mat5)

# Desconstruindo a Matriz
c(mat4)
