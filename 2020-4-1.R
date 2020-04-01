x <- c(3,8,2)
y <- c(5,4,2)
x > y
x >= y
x < y
x <= y
x == y
x != y

x <- 1:3
x > 2
x < 2
x <= 2 | x >= 3
x <= 2 | x >= 1

x  <- 1:5
any(x>=4)
all(x>=4)

x <- 1:5
x >= 4
sum(x>=4)
mean(x>=4)

x <- 1:5
x %in% c(2,4) # 벡터 x의 구성요소 하나하나와 %in% 오른쪽에 주어진 값 비교

y <- c(2,4,6,8,10)
y[c(1,3,5)]
y[c(-2,-4)]
y[c(2,2,2)] # 같은 위치 반복 지정 가능
y[6] # 지정한 위치가 벡터 길이보다 큰 경우

pop
pop[c("Seoul","Busan")]

y
y[c(TRUE, TRUE, FALSE, FALSE, TRUE)]
y>3
y[y>3]

x <- c(80, 88, 90, 93, 95, 94, 99, 78, 101)
x >= mean(x)
x[x >= mean(x)]

z <- (x-mean(x))/sd(x)
x[abs(z) <= 1]
x[abs(z) > 1 & abs(z) <= 2]
x[abs(z) > 2]

gender <- c("Male", "Female", "Female")
gender_f <- factor(gender)
gender_f

x <- c(1, 3, 2, 2, 1, 4)
factor(x)
factor(x, labels=c("A","B","C","D"))
factor(x, labels=c("A","A","B","B"))

typeof(gender_f)
class(gender_f)

summary(gender)
summary(gender_f)

income <- c("Low", "Medium", "High", "Medium")
factor(income, order=TRUE)
factor(income, order=TRUE, level=c("Low","Medium","High"))

x <- c(80,88,90,93,95,94,100,78,65)
x3 <- 1*(x>=90) + 2*(x>=80 & x <90) + 3*(x<80)
x3_f <- factor(x3, labels=c("C","B","A")) # 순서형은 level 숫자형벡터 변환은 labels
x3_f

cat.x <- cut(x, breaks=c(0,80,90,100), include.lowest=TRUE,
             right=FALSE, labels=c("C","B","A"))
cat.x

cat.x <- cut(x, breaks=c(0,80,90,100), include.lowest=TRUE,
             right=FALSE, labels=c("C","B","A"),ordered_result=TRUE)
cat.x

x <- as.Date(c("2017-01-01","2018-01-01"))
x

typeof(x)
x[2]-x[1]

s1 <- as.Date("2018-03-01")
e1 <- as.Date("2018-03-31")
seq(from=s1, to=e1, by=7)

seq(from=s1, by="week", length=5)
seq(from=s1, by="month", length=5)
seq(from=s1, by="year", length=5)