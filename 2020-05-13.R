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

pop <- top_pop$pop
pop <- gsub(",","",pop)
mean(as.numeric(pop))

# dplyr
# filter

library(tidyverse)
mtcars_t <- as_tibble(mtcars)
filter(mtcars_t, mpg >= 30)
filter(mtcars_t, mpg >= 30 & wt < 1.8)
filter(mtcars_t, mpg <= 30 & cyl %in% c(6,8) & am == 1)
filter(mtcars_t, mpg >= median(mpg) & mpg <= quantile(mpg,probs=0.75))
filter(mtcars_t, between(mpg,median(mpg),quantile(mpg,probs=0.75)))

# 예제 airquality
airs <- as_tibble(airquality)
filter(airs, is.na(Ozone) | is.na(Solar.R))
