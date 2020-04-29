# tibble의 생성
# data frame을 이용한 tibble의 생성
library(tidyverse)
as_tibble(cars)

# 개별 벡터를 이용한 tibble의 생성
tibble(x=1:3,y=x+1,z=1)

# tibble vs dataframe
data.frame(x:1:3,y=x+1) # 오류
tibble(x=1:3, y=letters[1:3])
str(data.frame(x=1:3,y=letters[1:3]))

# 행단위로 tibble 생성
tribble(
  ~x,~y,
  1, "a",
  2, "b",
  3, "c")


# tibble과 전통적인 dataframe의 차이
# 출력 방식의 차이
# tibble은 10개만 dataframe은 전부를 출력
# tibble의 더많은 개수 확인할 시 print 함수 사
data(Cars93, package="MASS")
Cars93

as_tibble(Cars93)
print(as_tibble(Cars93), n=3, width=Inf)

# rownames 처리 방식 차이
head(mtcars)
mtcars_t <- as_tibble(mtcars)
print(mtcars_t, n=6)

mtcars_d <- rownames_to_column(mtcars, var="rowname")
mtcars_t <- as_tibble(mtcars_d)
mtcars_t

# 인덱싱 방법의 차이
df1 <- data.frame(xyz=1:3, abc=letters[1:3])
df1$x

tb1 <- as_tibble(df1)
tb1$x
tb1$xyz

mtcars[, 1:2]
mtcars[, 1]

mtcars_t[, 1:2]
mtcars_t[, 1]
mtcars_t[1, 1]

