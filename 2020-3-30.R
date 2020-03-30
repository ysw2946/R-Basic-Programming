x <- c(TRUE, FALSE, TRUE)
y1 <- c(1L, 3L, 5L)
y2 <- c(1.1, 3.5, 10.4)
z <- c("one", "two", "three")

typeof(x)
typeof(y1)
typeof(y2)
typeof(z)

y1
length(y1)

a <- 1; a # ; 은 양쪽으로 두개로 구분시켜준다

c(1, "1", TRUE)
c(3, TRUE, FALSE)

# 처음 입력할 때
c(Seoul=9930, Busan=3497, Inchon=2944, Suwon=1194) 

# 이미 생성된 벡터
pop <- c(9930,3497,2944,1194)
names(pop) <- c("Seoul","Busan","Inchon","Suwon")
pop
names(pop)

# 숫자형 벡터 입력
x <- scan()
x
y <- scan(what="character")
y
# 자료에 인용부호 사용 불필요
# 빈 칸이 자료에 포함된 경우에는 인용부호 사용

# 함수 c()
x <- c(11,12,13,14)
c(x,15)

y <- c(16,17,18)
c(x,y)
# 함수 append() : 추가되는 스칼라 혹은 벡터의 위치 조절 가능
append(x,15)
append(x, 15, after=2)
append(x, y)
append(x, y, after=3)

1:5
-3:3
1.5:5.4
5:0

seq(from=0,to=5) # seq(0,5)
seq(from=0,to=5,by=2) #  seq(0,5, by=2)
seq(from=0,to=5,length=3) #  seq(0,5, len=3)
seq(from=0,by=2,length=3) #  seq(0,by=2,len=3)

seq(3)
seq(-3)

rep(1, times=3)
rep(1:3, times=2)
rep(c("M","F"), times=c(2,3))

# 옵션 each의 활용
rep(1:3, each=2)
# 옵션 each와 times의 활용
rep(1:3, each=2, times=2)

# 옵션 length의 활용
rep(1:3, length=6)
# 옵션 each와 length의 활용
rep(1:3, each=2, length=8)