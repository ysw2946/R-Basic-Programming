library(tidyverse)
ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy)) + 
  facet_wrap(~ class)

# class변수의 2seater를 제거하고 그래프 출력
mpg %>% filter(class != "2seater") %>%
ggplot() + 
  geom_point(mapping=aes(x=displ, y=hwy)) + 
  facet_wrap(~ class)

# 패널 배치 조절
# facet_wrap
pp <- mpg %>%
  filter(class != "2seater") %>%
  ggplot() +
  geom_point(mapping=aes(x=displ, y=hwy))
pp + facet_wrap(~class, ncol=2)
pp + facet_wrap(~class, ncol=2, dir="v")

# facet_grid
my_plot <- mpg %>%
  filter(cyl != 5, drv != "r") %>%
  ggplot() +
  geom_point(mapping=aes(x=displ, y=hwy))

my_plot + facet_grid(drv ~ .)
my_plot + facet_grid(. ~ cyl)
my_plot + facet_grid(drv ~ cyl)


air_1 <-airquality %>% mutate(Wind_d = cut_number(Wind,4))
air_1 %>% ggplot() +
  geom_point(mapping=aes(x=Solar.R,y=Ozone)) +
  facet_wrap(~Wind_d)

air_1 %>%
  ggplot() +
  geom_point(mapping=aes(x=Solar.R,y=Ozone, color=Wind_d,
                         size=Wind_d))
