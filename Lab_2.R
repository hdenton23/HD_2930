#1
library(tidyverse)
install.packages("datasauRus")
library(datasauRus)

dino_data<- datasaurus_dozen %>%
filter(dataset=="dino")  

#2
ggplot(data=dino_data)+
  geom_point(mapping=aes(x=x, y=y))

circle_data<- datasaurus_dozen %>%
  filter(dataset=="circle")
ggplot(data=circle_data)+
  geom_point(mapping=aes(x=x, y=y))

star_data<- datasaurus_dozen %>%
  filter(dataset=="star")
ggplot(data=star_data)+
  geom_point(mapping=aes(x=x, y=y))

#3
dino_data %>%
  summarize(r = cor(x,y))

circle_data %>%
  summarize(r = cor(x,y))

star_data %>%
  summarize(r = cor(x,y))

#4
#test