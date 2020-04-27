x <- matrix(1:12, nrow=3)
x

y <- matrix(1:12, nrow=3 , byrow=TRUE)
y

x1 <- 1:3
x2 <- 4:6
(A <- cbind(x1,x2))
(B <- rbind(x1,x2))

cbind(A, x3=7:9)
rbind(A, 7:8)

x1 <- 1:4
x2 <- 5:6
x3 <- 7
cbind(x1,x2,x3)

x <- 1:12
dim(x) <- c(3,4)
x

rownames(x) <- c("one","two", "three")
colnames(x) <- c("a","b","c","d")
x

x
length(x)
nrow(x); ncol(x)
dim(x)

dim(x)[1]
dim(x)[2]

xyz <- array(1:24, c(4,3,2))
xyz
dimnames(xyz) <- list(X=c("x1","x2","x3","x4"),
                      Y=c("y1","y2","y3"),
                      Z=c("z1","z2"))
xyz

x
x[2,3]
x[1,]
x[,2]
x[1:2,]
x[1:2,c(1,3)]

xyz <- array(1:24, c(4,3,2))
xyz[,1,1]
xyz[,,1]

A <- matrix(1:4, nrow=2, byrow=TRUE)
A
B <- matrix(5:8, nrow=2, byrow=TRUE)
B

A*B
A %*% B
t(A)

colMeans(A)
rowSums(A)
diag(A)
x <- c(10,20); diag(x)
diag(2)

solve(A)
solve(A)%*%A
b <- c(5,6); solve(A,b)
