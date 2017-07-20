#Subsetting List
x <- list(id=1:4,height=170,gender="male")
x
x[1]
x["id"]

x[[1]]
x[["id"]]
x$id

x[c(1,3)]

y<-"id"
x[[y]]
x$id

x<- list(a = list(1,2,3,4),b = c("Monday","Tuesday"))
x
x[[1]]
x[[1]][[2]]
x[[1]][2]

x[[c(1,3)]]
x[[c(2,2)]]  

l <- list(asdfghj = 1:10)
l$asdfghj
l$a

l[["a"]]

l[["a",exact = FALSE]]


#missing value 
x <- c(1,NA,2,NA,3)
is.na(x)

x[!is.na(x)]

y<- c("a","b",NA,"c",NA)
z<- complete.cases(x,y)
z

x[z]
y[z]
library(datasets)
head(airquality)

g <- complete.cases(airquality)
g
airquality[g,][1:10,]


#vectorized opreation
x <- 1:5
y <- 6:10
x+y
x * y
x/y


x<- matrix(1:4,nrow = 2,ncol = 2)
y <- matrix(rep(2,4),nrow = 2,ncol = 2)
x*y
x/y

x %*% y


  