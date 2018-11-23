# Estruturas de Controle

#If-Else
x = 25
if (x < 30) {
  "Este numero é menor que 30"
}

if (x > 30) {
  "Este numero é maior que 30"
} else {
  "Este numero é menor que 30"
}

x = 5
ifelse(x < 6, 'Sim', 'Nao')

# Estruturas if dentro de funções
func1 <- function(x, y) {
  ifelse(y < 7, x+y, 'Não')
}

func1(4,7)
func1(3,3)

# Rep
rep(rnorm(10), 5)

# Repeat
x = 1
repeat {
  x = x + 3
  if(x > 99)
    break
  print(x)
}

# Loop For
for (i in 1:10) {
  print(i)
}

# ignora alguns elementos dentro do loop
for (i in 1:22) {
  if (i == 12 | i == 15) {
    next
  }
  print(i)
}

# Interromper o loop
for (i in 1:22) {
  if (i == 13) {
    break
  }
  print(i)
}

#  Loop While
x = 1
while( x < 5) {
  x = x +1
  print(x)
}
