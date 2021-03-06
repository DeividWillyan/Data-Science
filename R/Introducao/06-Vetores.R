# Vetores

# Vetor de caracteres
vetor_caracter = c("Ol�", "Deivid")
vetor_caracter


# Vetor floats
vetor_numerico = c(1.90, 45.3, 300.5)
vetor_numerico


# Vetor de valores complexos
vetor_complexo = c(5.2+3i, 3.8+4i)
vetor_complexo


# Vetor de valores l�gicos
vetor_logico = c(TRUE, FALSE, TRUE)
vetor_logico


# vetor de numeros inteiros
vetor_integer = c(2,4,6)
vetor_integer


# Utilizando seq()
vetor1 = seq(1:10)
vetor1
is.vector(vetor1)


# Utilizando rep()
vetor2 = rep(1:5)
vetor2



# Indexa��o de vetores
a <- c(1,2,3,4,5)
a
a[1]
a[6]

b <- c("Deivid", "Willyan")
b
b[1]


# Combinano vetores
v1 = c(2,3,5)
v2 = c("aa", "bb", "cc", "dd", "ee")
c(v1, v2)



# Opera��es com Vetores
x = c(1,2,3,4)
y = c(5,6,7,8)

x * 5
x + y
x - y
x * y
x / y



# Somando vetores com n�meros diferentes de elementos
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta



# Vetor Nomeado
v = c("Rodrigues", "Fabiano")
v
names(v) = c("Nome", "Sobrenome")
v
v["Nome"]





















