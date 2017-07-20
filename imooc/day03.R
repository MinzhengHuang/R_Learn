# 1. lapply 可以循环处理列表中的每一个元素
?str
str(lapply)

x <- list(a = 1:10, b = c(11,21,31,41,51))
x
lapply(x,mean)

y <- 1:4
lapply(y,runif)
lapply(y,runif,min = 0,max = 100)

z <- list(a = matrix(1:6,2,3),b = matrix(4:7,2,2))
lapply(z,function(m) m[1,])


# 2. sapply 简化lapply结果:
#     -结果列表元素长度均为1,返回向量;
#     -结果列表元素长度相同或大于1,返回矩阵)
y <- list(a = 1:10, b = c(11,21,31,41,51))
lapply(y,mean)
sapply(y,mean)

class(sapply(y,mean))


# 3. apply 沿着数组的某一维度处理数据
x <- matrix(1:16,4,4)
x
apply(x,2,mean)
apply(x,2,sum)

apply(x,1,mean)
apply(x,1,sum)

rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

x <- matrix(rnorm(100),10,10)
x
apply(x,1,quantile,probs = c(0.25,0.75))

x <- array(rnorm(2*3*4),c(2,3,4))
x
apply(x,c(1,2),mean)
apply(x,c(1,3),mean)
apply(x,c(2,3),mean)


# 4. mapply 即lapply的多元版本
x <- list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))
x
y <- mapply(rep,1:4,4:1)
y

s <- function(n,mean,std){
  rnorm(n,mean,std)
}

s(4,0,1)

mapply(s,1:5,5:1,2)
list(s(1,5,2),s(2,4,2),s(3,3,2),s(4,2,2),s(5,1,2))


# 5. tapply 对向量的子集进行操作
x <- c(rnorm(5),runif(5),rnorm(5,1))
f <- gl(3,5)
f

tapply(x,f,mean)
tapply(x,f,mean,simplify = FALSE)

# 6. split 根据因子或因子列表将向量或其他对象分组
x <- c(rnorm(5),runif(5),rnorm(5,1))
f <- gl(3,5)
split(x,f)

lapply(split(x,f),mean)

head(airquality)
s <- split(airquality,airquality$Month)
s

table(airquality$Month)

lapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")],na.rm = TRUE))
sapply(s,function(x) colMeans(x[,c("Ozone","Wind","Temp")]))



# 7. 排序
x <- data.frame(v1 = 1:5,v2 = c(10,7,9,6,8),v3 = 11:15,v4 = c(1,1,2,2,1))
x
sort(x$v2)
sort(x$v2,decreasing = TRUE)

order(x$v2)
x[order(x$v2),]
x[order(x$v4,x$v2),]
x[order(x$v4,x$v2,decreasing = TRUE),]



# 8. 总结数据信息
head(airquality)
tail(airquality)
head(airquality,10)

summary(airquality)
str(airquality)

table(airquality$Month)
table(airquality$Ozone)
table(airquality$Ozone,useNA = "ifany")
table(airquality$Month,airquality$Day)

any(is.na(airquality$Ozone))
sum(is.na(airquality$Ozone))

all(airquality$Month < 12)

Titanic <- as.data.frame(Titanic)
head(Titanic)
dim(Titanic)
summary(Titanic)

x <- xtabs(Freq ~ Class + Age,data = Titanic)
x

ftable(x)

object.size(airquality)
print(object.size(airquality),units = "KB")



