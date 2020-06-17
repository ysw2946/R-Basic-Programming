library(lattice)
library(tidyverse)

# 1.1
barley %>% ggplot(aes(x=yield,y=variety,color=year)) +
  geom_point() + facet_wrap(~site)

# 1.2
barley %>% ggplot(aes(x=yield,y=variety,color=site,shape=year)) +
  geom_point()

# 1.3
barley %>% group_by(variety) %>%
  summarise(mean_yield=mean(yield)) %>% arrange(desc(mean_yield))

# 2.1
mpg %>% count(fl)

# 2.2
mpg_1 <- mpg %>% filter(fl %in% c("p","r"))
mpg_1 %>% ggplot() + geom_bar(aes(x=fl,y=stat(prop), group=1))

# 2.3
mpg_1 %>% count(trans)

# 2.4
mpg_2 <- mpg_1 %>% mutate(am = substr(trans,1,nchar(trans)-4))
mpg_2 %>% ggplot(aes(x=fl,fill=am)) +
  geom_bar(position="fill")

# 2.5
mpg_2 %>% ggplot(aes(x=fl,y=hwy)) +
  geom_boxplot()

# 2.6
mpg_2 %>% ggplot(aes(x=fl,y=hwy)) +
  geom_boxplot() + facet_wrap(~am, ncol=1) + coord_flip()
