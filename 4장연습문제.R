# 4장 연습문제
# 1.1)
library(tidyverse)
air_t <- as_tibble(airquality)

air_sub1 <- filter(air_t, Wind >= mean(Wind,na.rm=TRUE) &
                     Temp <= mean(Temp, na.rm=TRUE))
air_sub1 <- select(air_sub1, c(1,2,5))

# 1.2)
air_sub2 <- filter(air_t, Wind <= mean(Wind,na.rm=TRUE) &
                     Temp >= mean(Temp, na.rm=TRUE))
air_sub2 <- select(air_sub2, c(1,2,5))

# 1.3)
summarise(air_sub1, n=n(), m_oz=mean(Ozone, na.rm=TRUE), m_solar=mean(Solar.R, na.rm=TRUE))
summarise(air_sub2, n=n(), m_oz=mean(Ozone, na.rm=TRUE), m_solar=mean(Solar.R, na.rm=TRUE))

# 1.4)
air_sub1 %>% group_by(Month) %>% summarise(n=n(), m_oz=mean(Ozone, na.rm=TRUE),m_solar=mean(Solar.R, na.rm=TRUE))
air_sub2 %>% group_by(Month) %>% summarise(n=n(), m_oz=mean(Ozone, na.rm=TRUE),m_solar=mean(Solar.R, na.rm=TRUE))

# 2.1)
mtcar_t <- rownames_to_column(mtcars, var="model") %>% as_tibble() %>% print(n=3)

# 2.2)
cars <- mtcar_t %>% select(c(1:5,7,10))

# 2.3)
cars <- cars %>% mutate(disp_cc=disp*16.4) %>% select(-disp)

# 2.4)
cars <- cars %>% mutate(type = if_else(disp_cc < 1000, "Compact",
                        if_else(disp_cc < 1500, "Small",
                        if_else(disp_cc < 2000, "Midsize","Large")))) %>% print(n=3)
# 2.5)
cars %>% filter(am == 1 & cyl == 8) %>% select(1,2,7,8)

# 2.6)
cars %>% group_by(cyl) %>% summarise(n=n(),mpg=mean(mpg),disp_cc=mean(disp_cc),hp=mean(hp),wt=mean(wt))

# 3)
air_s <- sample(1:nrow(air_t),size=15)
air_t[air_s[1:10],]
air_t[air_s[11:15],]


