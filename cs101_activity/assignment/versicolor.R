dtaframe2 <- data.frame(iris)
dtaframe2

dtaframe2[dtaframe2$Species == 'versicolor' ,]

sbst2 <- subset(dtaframe2, Species == 'versicolor')
sbst2

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

mean(vrsicolor)