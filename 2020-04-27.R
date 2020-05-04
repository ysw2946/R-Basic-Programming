# 데이터 프레임
df1 <- data.frame(x=c(2,4,6), y=c("a","b","c"))
str(df1)

df2 <- data.frame(x=c(2,4,6),y=c("a","b","c"),
                  stringsAsFactors=FALSE)
str(df2)

# 데이터 프레임의 인덱싱1 : 리스트에 적용되는 방법
df2
colnames(df2)
names(df2)
rownames(df2)
length(df2)

# []를 하나 쓰면 데이터프레임 두개를 쓰면 결과가 벡터로 나타
df2
df2[1]
df2[[1]]
df2["x"]
df2[["x"]]

# 일반적으로 벡터 형태로 선택
# $ 표시를 사용하면 간편
df2[["x"]]
df2$x

# 데이터 프레임의 인덱싱2 : 행렬에 적용되는 방법
# 선택된 변수가 하나이면 결과는 벡터, 하나 이상이면 데이터 프레임
df2[c(1,2),1]
df2[c(1,2),]

# with() 사용법
str(airquality)

# 예제 : 데이터 프레임 airquality
z.Temp <- (Temp-mean(Temp))/sd(Temp)
z.Temp <- (airquality$Temp-mean(airquality$Temp))/sd(airquality$Temp)
z.Temp <- with(airquality, (Temp-mean(Temp))/sd(Temp))

# attach()의 사용
attach(airquality)
mean(Temp); mean(Wind)
sd(Temp); sd(Wind)
detach(airquality)
mean(Temp)

# attach() 사용시 주의사항
# 데이터 프레임의 변수 중
# 현재 작업 공간에 있는 다른객체와 이름이같은 변수가 있는 경우
attach(airquality)
cor(Temp,Wind)
Temp <- c(77,65,89,80)
cor(Temp,Wind)
length(Wind)
Temp
detach(airquality)

# attach()로 불러오는 데이터 프레임의 변수가 현재 작업공간에 있는
# 다른 객체와 이름이 같으면 경고 문구
Temp <- c(77,65,89,80)
attach(airquality)
Temp; mean(Temp)
mean(airquality$Temp)
rm(Temp)
mean(Temp)

# attach()를 해준만큼 detach()도 해줘야 한다
attach(airquality)
mean(Temp)
attach(airquality)
mean(Temp)
detach(airquality)
mean(Temp)
detach(airquality)
mean(Temp)

library(tidyverse)
