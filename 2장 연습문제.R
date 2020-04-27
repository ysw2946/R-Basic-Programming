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
