#species virginica
dtaframe3 <- data.frame(iris)
dtaframe3

dtaframe3[dtaframe3$Species == 'virginica' ,]

sbst3 <- subset(dtaframe3, Species == 'virginica')
sbst3

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

#mean of sepal length
mean(slength3)

#mean of sepal width
mean(swidth3)

#mean of petal length
mean(plength3)

#mean of petal width
mean(pwidth3)

#mean of species virginica
mean(vrginica)