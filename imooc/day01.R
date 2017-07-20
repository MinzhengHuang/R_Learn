# 1. 基本数据类型
x <- 1
x
class(x)
x <- 3.4
class(x)
x <- 2L
class(x)
X <- 5
y <- "hello hmz"
class(y)
y <- TRUE
class(y)
x <- 1+2i
class(x)

# 2.Vector(向量)
x <- vector("character",length = 10)

x1 <- 1:4

x2 <- c(1,2,3,4)

x3 <- c(TRUE,10,"zbc")

x4 <- c("a","b","c") 
as.numeric(x4)
as.logical(x)
as.character(x)

class(x1)
names(x1) <- c("a","b","c","d")
x1

# 3. Matrix(矩阵) & Array(数组) 
x <- matrix(nrow = 3,ncol = 2)
x
x <- matrix(1:6,nrow = 3,ncol = 2)
x
dim(x)
attributes(x)

y <- 1:6
dim(y) <- c(2,3)

y2 <- matrix(1:6, nrow = 2, ncol = 3)

rbind(y,y2)
cbind(y,y2)

x <- array(1:24,dim = c(4,6))
x
x1 <- array(1:24,dim = c(2,3,4))
x1


# 4. list(列表) 
l <- list("a",2,10L,3+4i,TRUE)
class(l)
l
l2 <- list(a = 1,b = 2,c = 3)
l2
l3 <- list(c(1,2,3),c(4,5,6,7))
l3

x <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(x) <- list(c("a","b"),c("c","d","e"))
x

# 5. factor(因子)
x <- factor(c("female","male","male","female","female"))
class(x)
x
y <- factor(c("female","male","male","female","female"),levels = c("male","female"))
y

table(x)
unclass(x)
class(unclass(x))


# 6. 缺失值(missing value)
x <- c(1,NA,2,NA,3)
x
is.na(x)
is.nan(x)

x <- c(1,NaN,2,NaN,3,NA)
is.na(x)
is.nan(x)


 
# 7. 数据框(data frame)
df <- data.frame(id = c(1,2,3,4), name = c("a","b","c","d"), gender = c(TRUE,TRUE,FALSE,FALSE))
class(df)
df

nrow(df)
ncol(df)

df2 <- data.frame(id = c(1,2,3,4), score = c(80,86,90,100))
df2

data.matrix(df2)
class(df2)

# 8. 时间与日期
x <- date()
x
class(x)

x2 <- Sys.Date()
x2
class(x2)

x3 <- as.Date("2017-01-01")
x3
class(x3)

weekdays(x3)
months(x3)
quarters(x3)

julian(x3)

x4 <- as.Date("2018-01-01")
x4 - x3
as.numeric(x4 - x3)



x <- Sys.time()
x
class(x)

p <- as.POSIXlt(x)
p  
class(p)

names(unclass(p))

p$sec
p$hour

as.POSIXct(p)

x1 <- "Jan 1, 2015 01:01"
strptime(x1, "%B %d, %Y %H:%M")
