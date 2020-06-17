library(tidyverse)

# 위치 조정: position adjustments
ggplot(mpg, aes(x=cty,y=hwy)) +
  geom_jitter(width=0.4, height= 0.05)
ggplot(mpg, aes(x=cty,y=hwy)) +
  geom_jitter(width=0.05, height= 0.4)

# diamonds에서 변수 carat과 price의 산점도
ggplot(data=diamonds) +
  geom_point(mapping=aes(x=carat, y=price))

# 이변량 막대 그래프 작성
mpg_1  <- mpg %>% mutate(am=substr(trans,1,nchar(trans)-4)) %>% filter(cyl!=5)
mpg_1

p_1  <- ggplot(mpg_1,aes(x=as.factor(cyl),fill=am)) +
  xlab("Number of Cylinders")
p_1 + geom_bar()

# 옆으로 붙여 놓은 막대 그래프 : position=dodge
p_1  <- ggplot(mpg_1,aes(x=as.factor(cyl),fill=am)) +
  xlab("Number of Cylinders")
p_1 + geom_bar(position="dodge")

p_1  <- ggplot(mpg_1,aes(x=as.factor(cyl),fill=am)) +
  xlab("Number of Cylinders")
p_1 + geom_bar(position="dodge2")

# 나란히 서 있는 상자그림
ggplot(mpg_1,aes(x = as.factor(cyl),y = hwy)) +
  geom_boxplot() + xlab("Number of Cylinders")

# 그룹을 구성하는 변수가 두 개인 경우의 상자그림
ggplot(mpg_1, aes(x = as.factor(cyl), y = hwy)) +
  geom_boxplot(aes(fill=am)) + xlab("Number of Cylinders")

# 그룹을 구성하는 변수가 두 개인 경우의 상자그림
ggplot(mpg_1, aes(x = as.factor(cyl), y = hwy)) +
  geom_boxplot() + xlab("Number of Cylinders") + facet_wrap(~am)

# mpg에서 disapl과 hwy의 산점도에 비모수 회귀곡선 추가한 그래프 작성.
# X축의 범위를 (3,6)으로 축소한 그래프 작성.
p  <- ggplot(mpg, aes(x=displ,y=hwy)) +
  geom_point() + geom_smooth()
p
p + coord_cartesian(xlim=c(3,6))

# scale에 의한 XY축 범위 조정
p + xlim(3,6) + xlab("Egine Displacement")

p + coord_cartesian(xlim=c(3,6)) +
  xlab("Engine Displacement")

# mpg에서 class의 그룹별로 hwy의 상자그림 작성
# 변수 라벨이 긴 경우에 coord_flip()으로 회전시켜서 나타내면 변수이름이 겹치지 않는다
ggplot(mpg,aes(x=class, y=hwy)) + 
  geom_boxplot()

ggplot(mpg,aes(x=class, y=hwy)) + 
  geom_boxplot() + coord_flip()

# 한 변수 hwy의 상자그림 작성
ggplot(mpg, aes(x="",y=hwy)) +
  geom_boxplot() + xlab("")

ggplot(mpg, aes(x="",y=hwy)) +
  geom_boxplot() + xlab("") + coord_flip()

# coord_polar()
# mpg의 변수 class의 파이 그래프 작성
b2  <- ggplot(mpg,aes(x="",fill=class)) + 
  geom_bar(width=1) + labs(x="",y="")
b2

# theta="y"로 함수 coord_polar() 실행 : 파이 그래프 작성
b2 + coord_polar(theta="y")
