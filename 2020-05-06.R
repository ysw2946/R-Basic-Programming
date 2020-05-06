df5 <- read.table("D://알기초프로그래밍/ch3_data/data3.txt", header=TRUE,
                  sep=",",stringsAsFactors=FALSE)
df5

# read.csv
df6 <- read.csv("D://알기초프로그래밍/ch3_data/data3.txt",
                stringsAsFactors=FALSE)
df6

# read.fwf로 고정된 포멧구조를 갖는 2차원 형태의 데이터파일 불러오기
df7 <- read.fwf("D://알기초프로그래밍/ch3_data/data4_1.txt", widths=c(2,1,4),
                stringsAsFactors=FALSE)
df7

df8 <- read.fwf("D://알기초프로그래밍/ch3_data/data4_2.txt", widths=c(2,1,4),
                header=TRUE,stringsAsFactors=FALSE)
df8

read.table(file.choose())

write.table(women, "D://알기초프로그래밍/ch3_data/out3_1.txt")
write.table(women, "D://알기초프로그래밍/ch3_data/out3_2.txt", quote=FALSE)
write.table(women, "D://알기초프로그래밍/ch3_data/out3_3.txt", quote=FALSE,
            row.names=FALSE)
write.table(women, "D://알기초프로그래밍/ch3_data/out3_4.txt", quote=FALSE,
            row.names=FALSE, sep=",")
write.csv(women, "D://알기초프로그래밍/ch3_data/out3_4.txt", quote=FALSE,
          row.names=FALSE)

# readr의 활용
library(readr)
read_csv("D://알기초프로그래밍/ch3_data/data5_1.txt")

read_csv("D://알기초프로그래밍/ch3_data/data5_1.txt",
         col_types="ici")

# 파일의 첫 줄에 변수이름이 없는 경우
read_csv("D://알기초프로그래밍/ch3_data/data5_2.txt",
         col_types="ici",col_names=FALSE)

read_csv("D://알기초프로그래밍/ch3_data/data5_2.txt",
         col_types="ici",col_names=c("age","gender","income"))

# 자료 파일에 주석이 있는 경우
read_csv("D://알기초프로그래밍/ch3_data/data5_3.txt",
         col_types="ici",comment = "#")