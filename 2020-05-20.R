# 변수 선택 : select() 
# mtcars의 rownames를 rowname 변수로 만들고 rowname과 mpg출력
library(tidyverse)
mtcars_d <- rownames_to_column(mtcars,var="rowname")
mtcars_t <- as_tibble(mtcars_d)
select(mtcars_t,rowname,mpg)

# mtcars_t의 mpg부터 wt까지 모두 선택
select(mtcars_t,mpg:wt)
select(mtcars_t, 2:7)

# mtcars_t에서 rowname과 qsec과 carb까지 제거
select(mtcars_t, -rowname, -(qsec:carb))
select(mtcars_t, -1, -(8:12))

# 문자열 매칭 함수
select(mtcars_t, starts_with("m"))
select(mtcars_t, ends_with("p"))
select(mtcars_t, contains("a"))

# iris 에서 "pe"가 이름에 있는 변수 선택, 제거
names(iris)
iris_t <- as_tibble(iris)
select(iris_t, contains("pe"))
select(iris_t, -contains("pe"))

# 대소문자 구분 = ignore.case=FALSE
select(iris_t, contains("pe",ignore.case=FALSE))
select(iris_t, -contains("pe",ignore.case=FALSE))
select(iris_t, -starts_with("Sp"))
select(iris_t, -ends_with("th"))

# 변수 배열 변경 : 몇몇 변수를 제일 앞으로 옮겨서 재배치
select(iris_t, Species , everything())

# 변수 이름 수정
select(mtcars_t, Model=rowname)
rename(mtcars_t, Model=rowname)

# 새로운 변수의 추가 : mutate()
mtcars_t1 <- mutate(mtcars_t, kml = mpg*(1/0.43))
mtcars_t1 <- mutate(mtcars_t1, gp_kml = if_else(kml >= 10, "good", "bad"))
select(mtcars_t1, kml, gp_kml, everything())

