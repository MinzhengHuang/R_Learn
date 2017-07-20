# 1. 构建子集(Subsetting List)
x <- 1:10
x[1]
x[5]
x[1:5]

x[x>5]
x>5
x[x>5 & x<7]
x[x<3 | x>7]

y <- 1:4
y
names(y) <- c("a","b","c","d")
y
y[2]
y["b"]

# 2. 构建矩阵的子集
x <- matrix(1:6,nrow = 2,ncol = 3)
x
x[1,2]
x[2,3]
x[1,]
x[,1]
x[2,c(1,3)]
class(x[2,c(1,3)])
x[1,2,drop = FALSE]

# 3. 构建数据框的子集
x <- data.frame(v1=1:5,v2=6:10,v3=11:15)
x
x$v3[c(2,4)] <- NA
x
x[,2]
x[,"v2"]

x[(x$v1<4 & x$v2>=8),]
x[(x$v1<4 | x$v2>=8),]

x[x$v1>2,]
x[which(x$v1>2),]
?which
which(x$v1>2)
x$v1>2

subset(x,x$v1>2)


# 4. 构建列表的子集
x <- list(id = 1:4,height = 170,gender = "male")
x
x[1]
x["id"]

x[[1]]
x[["id"]]
x$id
x$height

x[c(1,3)]

y<-"id"
x[[y]]
x$id
x$y

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

l <- list(asdfghj = 1:10,b = 1:2,aaa = 3:5)
l[["a",exact = FALSE]]
l$as


# 5. 处理缺失值(missing value) 
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


# 6. 向量化操作(vectorized opreation)
x <- 1:5
y <- 6:10
x+y
x * y
x/y


x<- matrix(1:4,nrow = 2,ncol = 2)
x
y <- matrix(rep(2,4),nrow = 2,ncol = 2)
y
x*y
x/y

x %*% y


  