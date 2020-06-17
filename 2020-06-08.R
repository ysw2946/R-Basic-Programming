# 기하 객체 : Geometric object
library(tidyverse)
ggplot(data=mpg) +
  geom_point(mapping=aes(x=displ,y=hwy))

ggplot(data=mpg) +
  geom_smooth(mapping=aes(x=displ,y=hwy))

# 글로벌 매핑과 로컬 매핑
ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color=drv)) +
  geom_smooth()

ggplot(data=mpg, mapping=aes(x=displ, y=hwy)) +
  geom_point(mapping=aes(color=drv)) +
  geom_smooth(se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ, y=hwy, color=drv)) +
  geom_point() +
  geom_smooth(se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(aes(color=drv),size=2) +
  geom_smooth(aes(linetype=drv),se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  geom_smooth(aes(group=drv),se=FALSE)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point(aes(color=drv)) +
  geom_smooth(data=filter(mpg,drv=="4"),se=FALSE,color="red")
