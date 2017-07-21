# 1. R语言入门与进阶概述
x <- rnorm(100)
head(x)
mean(x)
sd(x)
min(x)
max(x)


# 2. R的简单运算
2+2
7*17
sqrt(9)
3^3
log(7)
log10(7)


sin(pi/2)
pi
options(digits = 22)
pi

# 3. 无穷和缺失值
1/0
2*Inf
-1/0
0/0
x <- c(1,2,3,NA,5)
mean(x)

# 4. 变量的赋值
x <- 5
x
x*x
y <- x+5
ls()
rm(x)
ls()

?mean

# 5. R中的对象
c("a",5,1==2)

gl(2,10,labels = c("male","female"))
as.factor(c(rep("male",10),rep("female",10)))

matrix(c(1,2,3,4,5,6)+pi,nrow = 2)
options(digits = 7)
matrix(c(1,2,3,4,5,6)+pi,nrow = 2) < 6






