data(barley,package="lattice")
barley

library(tidyverse)

# 1.1
barley %>% ggplot(aes(x=yield,y=variety)) +
  geom_point(aes(color=year)) + facet_wrap(~site)

# 1.2
barley %>% ggplot(aes(x=yield,y=variety)) +
  geom_point(aes(color=site,shape=year))

# 1.3
str(barley)
barley %>% group_by(variety) %>% summarise(mean_yield=mean(yield)) %>% arrange(desc(mean_yield))

# 2.1
mpg %>% count(fl)

# 2.2
mpg_1 <- mpg %>% filter(fl %in% c("p","r"))
mpg_1 %>% ggplot() +
  geom_bar(aes(x=fl,y=stat(prop),group=1))

# 2.3
mpg_1 %>% count(trans)

# 2.4
mpg_2 <- mpg_1 %>% mutate(am=substr(trans,1,nchar(trans)-4))
mpg_2 %>% count(am)

mpg_2 %>% ggplot() +
  geom_bar(aes(x=fl,fill=am),position="fill")

# 2.5
mpg_2 %>% ggplot() +
  geom_boxplot(aes(x=fl,y=hwy))

# 2.6
mpg_2 %>% ggplot(aes(x=fl,y=hwy)) +
  geom_boxplot() + facet_wrap(~am) + coord_flip()

# 3.1
air_t <- as_tibble(airquality) %>% group_by(Month) %>% mutate(Missing = is.na(Ozone))
air_t %>% ggplot() +
  geom_bar(aes(x=Month,y=stat(prop),fill=Missing),position="fill")

# 3.2
air_t %>% summarise(mean_Oz=mean(Ozone,na.rm=TRUE)) %>%
  ggplot(aes(x=Month,y=mean_Oz)) + geom_bar(stat="identity",fill="blue")

# 3.3
air_t2 <- airquality %>% mutate(hl_temp = if_else(Temp >= mean(Temp,na.rm=TRUE),"High Temp","Low Temp"),
                           hl_wind = if_else(Wind >= mean(Wind,na.rm=TRUE),"High Wind","Low Wind"))

air_t2 %>% ggplot() +
  geom_point(aes(x=Solar.R,y=Ozone)) + facet_grid(hl_wind~hl_temp)

# 4.1
mtcars_t <- mtcars %>% rownames_to_column("model") %>% select(1,2,4,7)
mtcars_t %>% arrange(mpg,desc(disp)) %>% head(5)

# 4.2
mtc <- mtcars_t %>% mutate(gp_wt = if_else(wt >= median(wt,na.rm=TRUE), "Heavy","Not Heavy"))
mtc %>% ggplot(aes(x=disp,y=mpg,color=gp_wt)) + 
  geom_point() + geom_smooth(method=lm)

# 4.3
mtc %>% ggplot(aes(x=disp,y=mpg)) + 
  geom_point() + geom_smooth(method=lm) + facet_wrap(~gp_wt)

# 5.1
mpg_1 <- mpg %>% filter(cyl==4)
mpg_1$year <- as.factor(mpg_1$year)

mpg_1 <- mpg_1 %>% select("model","year","displ","cty","hwy") %>%
  arrange(year,desc(displ),cty)

mpg_2 <- mpg_1 %>% mutate(gp_displ = if_else(displ >= 2.0, "Large", "Small"))
mpg_2 %>% ggplot(aes(x=cty,y=hwy,color=gp_displ)) + geom_jitter() + facet_wrap(~year, ncol=1)

mpg_2 %>% ggplot() + geom_boxplot(aes(x=gp_displ,y=hwy)) + facet_wrap(~year)
