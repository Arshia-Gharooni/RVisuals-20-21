library(readxl)
city_temperature <- read_excel("E:/Temperature/Moscow/Month/city_temperature-Russia.xlsx")
View(city_temperature)

str(city_temperature)

library(ggplot2)



#1
ggplot(data=city_temperature)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in Russia",
       subtitle = "From 1995 to 2020",
       Y="Temperature(C)")

#1L
ggplot(data=city_temperature)+
  geom_point(mapping = aes(x=Year
                           ,y=Cavg,
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Month)+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year,
                          y=Cavg),color="red")+
  labs(title = "Annual temperature changes in different months in Russia",
       subtitle = "From 1995 to 2020",
       Y="Temperature(C)")











mean(city_temperature$Cavg)


#2
ggplot(data=city_temperature)+
  geom_point(mapping = aes(x=Month
                           ,y=log(Cavg),
                           color=Cavg ),alpha=0.4)+
  facet_wrap(~Year)+
  annotate("segment", x = 0, xend = 13, y =1.714945, yend = 1.714945,
           colour = "red")+
  labs(title = "Monthly temperature changes in different years in Russia",
       subtitle = "From 1995 to 2020",
       y="Log(Temperature)")



