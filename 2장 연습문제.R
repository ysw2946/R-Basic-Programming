# 2.8연습문제
# 1.
x <- c(17,16,20,24,22,15,21,18)
length(x)
x[length(x)]

# 2.
y <- c(10.4,5.6,3.1,6.4,9.6,7.8,12.1)
length(y)
y[length(y)-1]

# 3.
grade <- c("1st","1st","2nd","3rd","2nd","3rd","1st")
grade
factor_g <- factor(grade)
factor_g
factor_g <- factor(grade,order = TRUE, level = c("3rd","2nd","1st"))
factor_g

# 4.
m1 <- matrix(c(12,17,19,21,22,25,32,34,35),nrow=3)
rownames(m1) <- paste("Case #",1:3,sep="")
colnames(m1) <- paste("var",1:3,sep="")
m1
m1[,2]

# 5.
d1 <- data.frame(var1 = c(12,17,19), var2 = c(21,22,25), var3 = c(32,34,35))
d1
d1["var2"]

# 6.
iris
str(iris)
head(iris,3)
tail(iris,3)

# 7.
library(tidyverse)
df <- data.frame(x=1,y=1:9,z=rep(1:3,each=3),w=sample(letters, 9))
df
df1 <- as_tibble(df)

# 7.1
df[[2]]
df[["y"]]
df$y

# 7.2
head(df[2],5)
head(df1[2],5)

# 8
seq(-5,5,0.2)

a <- seq(1,10,2)
b <- seq(2,10,2)
c(a,b)

rep(1:3,time=3)

rep(c("a","b"),c(2,3))

paste("a",1:5,sep="")

z <- c("a","b","c")

paste(c("a","b","c"),rep(c("a","b","c"),each=3),sep="")

# 9
a1 <- paste(letters,1:26,sep="")
a1
a2 <- paste(a1,collapse="-")
a2
a3 <- paste0(a1,collapse="")
a3

# 10
x <- c(10.4,5.6,3.1,6.4,21.7)
mean_x <- (sum(x)/length(x))
mean_x
mean(x)

std_x <- sqrt(sum((x-mean_x)^2/(length(x)-1)))
std_x              
sd(x)

n <- 1:4
x[n+1]-x[n]
diff(x)

# 11
y <- c(17,16,20,24,22,15,21,18)
y
y[which.max(y)] <- 23
y

sum(y > 20)
mean(y < 18)*100

# 12
score <- c(85,91,75,69,52,95,88,100)
score3 <- 1*(score >= 90) + 2*(score >= 80 & score < 90) + 3*(score >= 70 & score < 80) + 4*(score >= 60 & score < 70) + 5*(score < 60)

grade_f <- factor(score3,labels=c("A","B","C","D","F"))
grade_f

grade_c <-cut(score, breaks=c(0,60,70,80,90,100),include.lowest=FALSE,
            right=TRUE,labels=c("F","D","C","B","A"))
grade_c

sg <- data.frame(score,grade_f)
sg

# 13
x <- c(1,3,2,7,12,6,1,3,6,6,7)
y