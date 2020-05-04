x <- list(a=c("one","two","three"), b=1:3, c=list(-1,-5),
          d=data.frame(x1=c("s1","s2"),x2=1:2))
x

x[1]
x[[1]]
str(x[1])
str(x[[1]])

# 리스트 x의 4번째 요소를 데이터 프레임 형태로 선택
x[[4]]
x$d
str(x[[4]])

# 리스트 x의 4번째 요소의 두 번째 열을 벡터 형태로 선택
x[[4]][[2]]
x$d$x2

# 리스트 x의 4번째 요소의 두 번째 열을 데이터 프레임 형태로 선택
x[[4]][2]
x$d[2]

# 3장. 데이터 불러오기
# 3.1 텍스트 파일 불러오기 1
x <- scan("D://알기초프로그래밍/ch3_data/data1.txt")
x

# read.table로 2차원 형태의 데이터 파일 불러오기
df1 <- read.table("D://알기초프로그래밍/ch3_data/data2_1.txt",
                  stringsAsFactors=FALSE)
class(df1$V2)
df1

# 데이터 파일의 첫 줄에 변수 이름이 있는 경우
df2 <- read.table("D://알기초프로그래밍/ch3_data/data2_2.txt",
                  header=TRUE,
                  stringsAsFactors=FALSE)
df2

# 데이터 파일에 # 기호로 시작되는 코멘트가 있는 경우
df3 <- read.table("D://알기초프로그래밍/ch3_data/data2_3.txt",
                  header=TRUE)
df3

# 데이터 파일에 결측값 NA가 아닌 다른 기호입 입력된 경우
df4 <- read.table("D://알기초프로그래밍/ch3_data/data2_4.txt",
                  header=TRUE,
                  na.strings=".", stringsAsFactors=FALSE)
df4
