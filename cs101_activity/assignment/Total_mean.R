dtaframe4 <- data.frame(iris)
dtaframe4

slength1 <- iris$Sepal.Length[1:50]
slength1

swidth1 <- iris$Sepal.Width[1:50]
swidth1

plength1 <- iris$Petal.Length[1:50]
plength1

pwidth1 <- iris$Petal.Width[1:50]
pwidth1

stosa <- c(slength1, swidth1, plength1, pwidth1)
stosa

slength2 <- iris$Sepal.Length[51:100]
slength2

swidth2 <- iris$Sepal.Width[51:100]
swidth2

plength2 <- iris$Petal.Length[51:100]
plength2

pwidth2 <- iris$Petal.Width[51:100]
pwidth2

vrsicolor <- c(slength2, swidth2, plength2, pwidth2)
vrsicolor

slength3 <- iris$Sepal.Length[101:150]
slength3

swidth3 <- iris$Sepal.Width[101:150]
swidth3

plength3 <- iris$Petal.Length[101:150]
plength3

pwidth3 <- iris$Petal.Width[101:150]
pwidth3

vrginica <- c(slength3, swidth3, plength3, pwidth3)
vrginica

overall <- c(stosa, vrsicolor, vrginica)
overall

mean(overall)