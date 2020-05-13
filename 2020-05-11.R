library(readr)

# 자료 파일에 주석이 있는경우 첫 행 생략
read_csv("D://알기초프로그래밍/ch3_data/data5_3.txt",
         col_types="ici",skip=1)
# 결측값이 NA가 아닌 다른 기호로 입력된 경우 : 옵션 na
read_csv("D://알기초프로그래밍/ch3_data/data5_4.txt",
         col_types="ici",col_names=FALSE, na=".")

# 결측값이 두 개 이상의 다른 기호로 입력된 경우
read_csv("D://알기초프로그래밍/ch3_data/data5_5.txt",
         col_types="ici",col_names=FALSE, na=c(".","?"))

# Excel 파일 불러오기
# install.packages("xlsx")
library(xlsx)
read.xlsx("D://알기초프로그래밍/ch3_data/data6.xlsx", sheetIndex=1)

library(readxl)
df3 <- read_excel("D://알기초프로그래밍/ch3_data/data6.xlsx")
df3

# 일부분 불러오기
read_excel("D://알기초프로그래밍/ch3_data/data6.xlsx", range="A1:B5")

# csv파일 불러오기
read_csv("D://알기초프로그래밍/ch3_data/data6.csv", col_types="ici")

# 웹에서 데이터 불러오기
iris.url <- 
 "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"

iris.data <- read_csv(iris.url, col_types="ddddc",
                      col_names=c("S.length","S.width","P.length",
                                  "P.width","Species"))
iris.data

# rvest의 함수 사용
library(rvest)
URL <- "https://en.wikipedia.org/wiki/World_population"
web <- read_html(URL)

# 읽어온 웹 페이지에서 table 노드 추출
tbl <- html_nodes(web,"table")
length(tbl)
head(tbl)

# 함수 html_table()로 테이블 데이터 불러오기
tbl_1 <- html_table(tbl[7])
tbl_1

top_pop <- tbl_1[[1]]
names(top_pop) <- c("rank","country","pop","area","density")
str(top_pop)

