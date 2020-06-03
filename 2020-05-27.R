library(tidyverse)
# 예제
airs_Month <- airquality %>% group_by(Month)
# 1)
airs_Month %>% summarise(avg_Oz=mean(Ozone,na.rm=TRUE))
# 2)
airs_Month %>% summarise(n_total=n(), n_miss=sum(is.na(Ozone),
                                                 n_obs=sum(!is.na(Ozone))))
# 3)
airs_Month %>% summarise(Ozone_f=first(Ozone), Ozone_l=last(Ozone))

# 4)
airs_Month %>% summarise(Ozone_max=max(Ozone,na.rm=TRUE),
                         Ozone_min=min(Ozone,na.rm=TRUE))

# 5)
Ozone_avg <- with(airquality, mean(Ozone, na.rm=TRUE))
airs_Month %>% summarise(low_Oz=sum(Ozone < Ozone_avg, na.rm=TRUE))

# 5장 자료의 시각화 : ggplot2
ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy))
