# 1.1 데이터 세트 fl2000.txt를 fl2000에 할당
fl2000 <- read.table("http://lib.stat.cmu.edu/datasets/fl2000.txt",
                     header=TRUE,stringsAsFactors=FALSE)
head(fl2000)
# 1.2 fl2000 의 변수와 관찰값의 수 : 17 개변수 67개의 관찰값
str(fl2000)
dim(fl2000)
# 1.3 fl2000 의 1,6,7 번째 변수의 이름
colnames(fl2000)[c(1,6,7)]

# 1.4 데이터 프레임 fl2000의 일부분 선택장하여 데이터 파일로 저장
fl2000_167 <- fl2000[c(1,6,7)]
fl2000_167
write.table(fl2000_167, "D://알기초프로그래밍/ex3_1,4.txt",
            quote=FALSE,row.names=FALSE)

# 2.1 데이터 세트 dirtbike 할당
dirtbike <- read.csv("D://알기초프로그래밍/dirtbike_aug.csv")
head(dirtbike)
# 2.2 dirtbike 의 변수와 관찰값의 수 : 30개의 변수 104개의 관찰값
str(dirtbike)
dim(dirtbike)

# 2.3 dirtbike의 1,7 번째 변수의 이름
colnames(dirtbike)[c(1,7)]

# 2.4 dirtbike의 일부분을 선택하여 데이터 파일로 저장
dirtbike_17 <- dirtbike[c(1,7)]
dirtbike_17
write.table(dirtbike_17, "D://알기초프로그래밍/ex3_2,4.txt",
            quote=FALSE,row.names=FALSE)


# 3.1 top_company 불러오기
library(rvest)
URL <- "https://en.wikipedia.org/wiki/South_Korea"
web <- read_html(URL)

eco <- html_nodes(web,"table")
eco_20 <- html_table(eco[20])
top_company <- as.data.frame(eco_20)
colnames(top_company) <- c("Rank","Name","HQ","Revenue","Profit","Assets")
top_company

# 3.2 Revenue의 평균값
str(top_company$Revenue)
top_Revenue <- top_company$Revenue
top_Revenue <- gsub(",","",top_Revenue)
mean(as.numeric(top_Revenue))
