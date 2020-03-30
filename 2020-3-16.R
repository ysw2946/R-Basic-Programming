speed <- c(4,7,8,9,10,11,12,13,13,14)
dist <- c(2,4,16,10,18,17,24,34,26,26)
summary(speed) #speed의 기초통계량
summary(dist)
cor(speed,dist) #speed,dist의 상관계수
plot(speed,dist) #speed,dist의 산점도

getwd() #현재의 작업 디렉토리 확인
ls() #작업공간에 임시 저장된 객체 리스트 확인

install.packages("tidyverse")
library(tidyverse)
