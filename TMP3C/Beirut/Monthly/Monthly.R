library(readxl)
bm <- read_excel("C:/Users/Arshiya/Downloads/BM.xlsx")
View(bm)


library(ggplot2)

#1-loess
ggplot(data=bm)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in Beirut",
       subtitle = "From 1995 to 2020",
       y="Temperature(C)")





#2-linear
ggplot(data=bm)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in Beirut",
       subtitle = "From 1995 to 2020",
       y="Temperature(C)")


