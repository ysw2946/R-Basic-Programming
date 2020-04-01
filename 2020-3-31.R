x <- c("Park", "Lee", "Kwon") 
nchar(x) # nchar()는 문자열을 구성하고 있는 문자 개수

paste("모든", "사람에게는", "통계적","사고능력이","필요하다") # paste()는 문자열의 결합
paste("모든", "사람에게는", "통계적","사고능력이","필요하다",sep="-")
paste("모든", "사람에게는", "통계적","사고능력이","필요하다",sep=" ")
paste("원주율은", pi, "이다") # 입력된 숫자는 문자로 전환되어 문자열과 결합

paste("Stat", 1:3 , sep="")
paste(c("Stat", "Math"), 1:3 , sep="-")

paste0(letters, collapse="")
paste0(LETTERS, collapse=",")

substr("Statistics", 1, 4)

x <- c("응용통계학과","정보통계학과","학생회장")
substr(x, 3, 6)
substr(x, c(1,3), c(2,6)) # 시작점과 끝점이 벡터인경우 순환법칙 적용

x <- c("New York, NY", "Ann Arbor, MI", "Chicago, IL") 
substr(x, nchar(x)-1, nchar(x)) 

x <- c("New York, NY", "Ann Arbor, MI", "Chicago, IL") 
(y <- strsplit(x, split=",")) # 전체괄호는 어떠한 결과가 할당되어졌는지 한번에 출력
unlist(y) # 리스트의 각각의 요소들이 벡터로 출력

unlist(strsplit("PARK",split=""))
unlist(strsplit("a.b.c", split="."))
unlist(strsplit("a.b.c", split="\\."))

x <- c("park","lee","kwon")
(y <- toupper(x))
tolower(y)

substr(x,1,1) <- toupper(substr(x,1,1))
x

x <- "Park hates stats. He hates math, too"
sub("hat", "lov", x)
gsub("hat", "lov", x)

x <- c("banana1", "banana2" , "banana3") # 이렇게 하는것은 비효율적
y <- paste0("banana", 1:3)
sub("a", "A", x)
gsub("a", "A", y)

z <- "Everybody cannot do it"
sub("not", "", z)

x <- c(7,8,9,10)
y <- c(1,2,3,4)
x+y
x-y
x*y
x/y
x^y

x
x+3
x/4
2^x

c(-1,0,1)/0
sqrt(-1)
Inf-Inf
Inf/Inf

c(1,2,3,4,5,6) + c(1,2,3)

1:4 + 1:3

abs(-2) #절대값 계싼
sqrt(25) # 제곱근 계산
ceiling(3.475) # 3.475보다 작지 않은 가장 작은 정수
floor(3.475) # 3.475보다 크지 않은 가장 큰 정수
trunc(5.99) # 소수점 이하 버림
round(3.475,2) # 소수 2자리로 반올림
signif(0.00347,2) # 유효수 2자리로 반올림

sin(1) # 삼각 함수
asin(sin(1)) # 역삼각함수
log(2,base=2) # 밑이 2인 로그
log(10) # 자연로그
log10(10) # 상용로그
exp(log(10)) # 지수함수, 자연로그의 역함수

x <- c(1,2,3,4,50)
mean(x) # 평균
median(x) # 중앙값
range(x) # 범위
IQR(x) # 사분위범위
sd(x) # 표준편차
var(x) # 분산
sum(x) # 합
min(x) # 최소값
max(x) # 최대값
diff(c(1,2,4,7,11)) # 벡터 안의 간격 즉 차분을 계산해주는것

x <- c(1,0,3,5,NA)
is.na(x)
sum(is.na(x))

x==NA

x <- c(1,0,3,5,NA)
mean(x); max(x)
mean(x, na.rm=TRUE); max(x, na.rm=TRUE)