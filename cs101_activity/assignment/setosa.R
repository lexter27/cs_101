dtaframe1 <- data.frame(iris)
dtaframe1

dtaframe1[dtaframe1$Species == 'setosa' ,]

sbst1 <- subset(dtaframe1, Species == 'setosa')
sbst1

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

mean(stosa)