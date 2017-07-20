# 1. lapply 可以循环处理列表中的每一个元素
str(lapply)

x <- list(a= 1:10, b= c(21,31,41,51))
x
lapply(x,mean)

x<-1:4
lapply(x,runif)
lapply(x,runif,min=0,max=100)

x <- list(a = matrix(1:6,2,3),b=matrix(4:7,2,2))
lapply(x,function(m) m[1,])

# 2. sapply 简化结果
y <- list(a= 1:10, b= c(21,31,41,51))
lapply(y,mean)
sapply(y,mean)

class(sapply(y,mean))



