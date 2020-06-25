data(Cars93, package="MASS")
Cars93

# 1.
car <- Cars93 %>% as_tibble() %>%
  select(c("Manufacturer","Model","MPG.highway","Cylinders",
                    "Weight","Origin"))
head(car, n=3)

# 2.
car <- car %>% mutate(make = paste(Manufacturer, Model,sep="-")) %>%
  select(c("make","MPG.highway","Cylinders","Weight","Origin"))
head(car, n=3)


# 3.1
car %>% count(Cylinders)

# 3.2
car <- car %>% filter(Cylinders %in% c(4,6,8))

# 4.1
car %>% ggplot(aes(x=MPG.highway,y=Weight)) +
  geom_point()

# 4.2


# 5.
car %>% arrange(MPG.highway) %>% 
  select(c("make","MPG.highway")) %>% tail(n=2)

# 6.1
car %>% ggplot(aes(x=Cylinders,fill=Origin)) +
  geom_bar(position="dodge")

# 6.2
car %>% ggplot() +
  geom_bar(aes(x=Cylinders,y=stat(prop)),group=2) + 
  facet_wrap(~Origin)

# 7.
car %>% ggplot() +
  geom_boxplot(aes(x=Cylinders,y=MPG.highway))


# 8.
car %>% ggplot(aes(x=Cylinders,y=MPG.highway,fill=Origin)) +
  geom_boxplot()

# 9.
car %>% ggplot() +
  geom_point(aes(x=MPG.highway,y=Weight,
             color=Origin,shape=Cylinders))


data(Cars93, package="MASS")
Cars93

cars <- Cars93 %>% as_tibble(Cars93) %>%
  select(c("Manufacturer","Model","MPG.city",
           "MPG.highway","DriveTrain","EngineSize"))

cars <- cars %>% mutate(Make = paste(Manufacturer,
                                     Model,sep=" ")) %>%
  mutate(MPG = (MPG.city + MPG.highway)/2) %>%
  select(c("Make","MPG","DriveTrain","EngineSize"))
head(cars)                

cars %>% ggplot(aes(x=EngineSize,y=MPG)) +
  geom_point() + geom_smooth(method=lm,aes(color=DriveTrain),se=FALSE) +
  geom_jitter()
