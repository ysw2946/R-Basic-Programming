library(tidyverse)
# 변수 class를 시각적 요소 color와 mapping
ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy, color=class))

# 변수drv를 시각적 요소 shape와 mapping
ggplot(data=mpg) + 
  geom_point(mapping=aes(x=displ, y=hwy, shape=drv))

# 변수 cyl을 시각적 요소 size와 mapping
ggplot(data= mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, size=cyl))

# 여러 시각적 요소를 동시에 mapping
ggplot(data =mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, color=class,
                         shape=drv, size=cyl))

# 시각적 요소 color의 setting : 모든 점을 빨간 색으로
ggplot(data =mpg) +
  geom_point(mapping=aes(x=displ, y=hwy), color="red")

# 여러 시각적 요소를 동시에 setting
ggplot(data =mpg) +
  geom_point(mapping=aes(x=displ, y=hwy), color="blue",
             size=3, shape= 21, stroke=2,fill="red")

# setting과 mapping
ggplot(data =mpg) +
  geom_point(mapping=aes(x=displ, y=hwy, color="blue"))

ggplot(data =mpg) +
  geom_point(mapping=aes(x=displ, y=hwy), color="blue")


