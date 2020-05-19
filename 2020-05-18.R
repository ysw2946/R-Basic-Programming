# 중복된 케이스 제거
df1 <- data.frame(id=rep(1:3, times=2:4), x1=1:9)
duplicated(df1$id)
filter(df1, !duplicated(df1$id))

# 모든 변수의 값이 중복된 행 제거
library(tidyverse)
# df2 = tibble(id=rep(1:3, each=2), x1=c(2,2,3,1,4,4))
df2 <- data.frame(id=rep(1:3,each=2), x1 = c(2,2,3,1,4,4))
tb2 <- as_tibble(df2)
duplicated(tb2)
filter(df2,!duplicated(tb2))

# 단순값 임의 추출
iris_t <- as_tibble(iris)
sample_n(iris_t, size=3)
sample_frac(iris_t, size=0.01)

# sample()
# 복원 추출 : replace=TRUE
sample(1:5, size=3)
sample(1:5, size=3, replace=TRUE)

my_index <- sample(1:nrow(iris_t), size=3)
iris[my_index,]

# 특정 변수의 값이 가장 큰(작은) 관찰값 선택
top_n(iris_t, n=2, Sepal.Width)
top_n(iris_t, n=-2, Sepal.Width)

# 관찰값의 정렬 : arrange()
mtcars_t <- as.tibble(mtcars)
arrange(mtcars_t, mpg)
arrange(mtcars_t, mpg, desc(wt))

air_t <- as.tibble(airquality)
air_t1 <- filter(air_t, Month==5, Day <= 10)
arrange(air_t1,Ozone)

arrange(air_t1, !is.na(Ozone))



