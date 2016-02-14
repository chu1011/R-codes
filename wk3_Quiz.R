##set working directory 
setwd("C:/Users/Hiroshi Ikeda/Desktop/Coursera/R Programming")

##iris data##
library(datasets)
data(iris)

#read iris data
iris <- data.frame(iris)
#data check
summary(iris)
iris
iris$Species

##Q1
#split
s <- split(iris, iris$Species)
sapply(split(iris$Sepal.Length, iris$Species), mean)

##Q2
#apply
  #1:4 th columns of iris data, maintain 2nd dimension, calc means
apply(iris[,1:4], 2, mean)


##mt cars data##
library(datasets)
data(mtcars)

#read mtcars data
mtcars <- data.frame(mtcars)

##Q3
f<-mtcars$cyl
f
tapply(mtcars$mpg, f, mean)

# just calc mean of all columns
apply(mtcars, 2, mean)
# ok
tapply(mtcars$mpg, mtcars$cyl, mean)
# just split
split(mtcars, mtcars$cyl)
# just calc mean of all columns
lapply(mtcars, mean)
# ok
sapply(split(mtcars$mpg, mtcars$cyl), mean)
# opposite
tapply(mtcars$cyl, mtcars$mpg, mean)
# ok
with(mtcars, tapply(mpg, cyl, mean))

#Q4
avghp<-sapply(split(mtcars$hp, mtcars$cyl), mean)
avghp
diff<- avghp[1] - avghp[3]
diff

##Q5##
debug(ls)