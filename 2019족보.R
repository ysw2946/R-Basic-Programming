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
