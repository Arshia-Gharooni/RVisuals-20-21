library(readxl)
London <- read_excel("E:/Temperature/London/Monthly/London.xlsx")
View(London)

library(ggplot2)

#1
ggplot(data=London)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in London",
       subtitle = "From 1995 to 2020",
       Y="Temperature(C)")


#1L
ggplot(data=London)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in London",
       subtitle = "From 1995 to 2020",
       Y="Temperature(C)")



log(11.59)

#2
ggplot(data=London)+
  geom_point(mapping = aes(x=Month
                           ,y=log(Cavg),
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Year)+
  annotate("segment", x = 0, xend = 13, y =2.450143, yend = 2.450143,
           colour = "red")+
  labs(title = "Monthly temperature changes in different years in London",
       subtitle = "From 1995 to 2020",
       y="Log(Temperature)")

#3



