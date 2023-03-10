library(readxl)
London2 <- read_excel("E:/Temperature/London/London2.xlsx")
View(London2)


library(ggplot2)



#1
ggplot(data = London2)+
  geom_point(mapping=aes(x=Year, y= Temperature,, color=Season))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year, y= Temperature, color=Season))+
  facet_wrap(~Season)+
  labs(title = "Temperature changes in different seasons in London",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")




#2
ggplot(data = London2)+
  geom_point(mapping=aes(x=Year, y= Temperature,color=Season))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year, y= Temperature,color=Season))+
  labs(title = "Temperature changes in different seasons in London",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")


