library(tidyverse)

# 2017
air_1 <- airquality %>% 
  as_tibble() %>% 
  mutate(Time=paste0(Month,"-",Day)) 
head(air_1)

air_2 <- air_1 %>% 
  filter(Month %in% c(7,8)) %>% 
  select(-c(Month,Day))
head(air_2)

air_3 <- air_2 %>% na.omit()
head(air_3)

air_3 <- air_3 %>% select(-Time)

air_4 <- air_3[,c(1,2,3,4)]
fx <- function(x) {
  m <- round(sapply(x,mean),2)
  md <- sapply(x,median)
  sd <- round(sapply(x,sd),2)
  iqr <- sapply(x,IQR)
  data.frame(Mean=m,Median=md,SD=sd,IQR=iqr)
}
fx(air_4)

# 2018
a1 <- letters %>% paste0(1:length(letters))
a1

a2 <- a1 %>% paste(collapse="")
a2

a3 <- gsub("-","",a2)
a3

mat <- matrix(c(1.2,1.5,2.1,2.5,2.7,2.1,3.1,3.2,2.8),nrow=3,
              byrow=TRUE)
mat
df <- data.frame(x1=c("Park","Lee","Kim"),
                 x2=c(14,16,21))
df

A <- list(mat=mat,df=df)
A

rownames(A[[1]]) <- paste0("SUb",1:3)
colnames(A[[1]]) <- paste0("Trt",1:3)

colnames(A[[2]]) <- c("name","sales")

A

apply(A[[1]],1,mean)
mean(A[[2]]$sales)

mpg$trans <- substr(mpg$trans,1,nchar(mpg$trans)-4) 
substr(mpg$trans,1,1) <- toupper(substr(mpg$trans,1,1))
mpg_1 <- mpg %>% select(c("model","trans","cty","hwy"))
head(mpg_1,n=3)

mpg_2 <- transform(mpg_1, hwy_gp = cut(mpg_1$hwy,
                                       breaks=c(0,20,30,100),
                                       include.lowest = TRUE,
                                       right=FALSE,
                                       labels=c("LOw","Middle","High")))
head(mpg_2,n=3)

air <- as_tibble(airquality)

air$Ozone <- if_else(is.na(air$Ozone),mean(air$Ozone,na.rm=TRUE),
                     as.numeric(air$Ozone)) %>% round()
air
