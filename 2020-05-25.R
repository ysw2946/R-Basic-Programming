# 새로운 변수의 추가 mutate()
library(tidyverse)
mtcars_t <- as.tibble(mtcars)
mtcars_t <- mutate(mtcars_t,
                   kml=mpg*0.43,
                   gp_kml=if_else(kml>=10,"good","bad"))
mtcars_t
select(mtcars_t, kml, gp_kml, everything())

# 새로운 변수만 유지하고 나머지 변수 삭제
transmute(mtcars_t,
          kml=mpg*0.43,
          gp_kml=if_else(kml>=10,"good","bad"))

# 그룹 생성 및 그룹별 자료 요약 : group by(), summarise()
summarise(mpg, hwy_mmpg=mean(hwy))
summarise(mpg, n=n() , n_hwy=n_distinct(hwy),
          avg_hwy=mean(hwy), sd_hwy=sd(hwy))

# group_by()
by_cyl <- group_by(mpg,cyl)
summarise(by_cyl, n=n(),avg_mpg=mean(hwy))


# pipe()
mpg %>% group_by(cyl) %>%
  summarise(n=n(), avg_mpg=mean(hwy))


# 예제
airs_Month <- airquality %>% group_by(Month)
# 1)
airs_Month %>% summarise(avg_Oz=mean(Ozone,na.rm=TRUE))
# 2)
airs_Month %>% summarise(n_total=n(), n_miss=sum(is.na(Ozone),
                                                 n_obs=sum(!is.na(Ozone))))
# 3)
airs_Month %>% summarise(first_Oz = first(Ozone),
                         last_Oz = last(Ozone))

  
                         
                         