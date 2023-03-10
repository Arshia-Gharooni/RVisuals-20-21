library(readxl)
 Russia1 <- read_excel("E:/Temperature/Moscow/Russia1.xlsx")
 View(Russia1)
 
 library(ggplot2)

#Russia_seasonal_changes
ggplot(data = Russia1)+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(mapping=aes(x=year, y= temp, color=season))+
  facet_wrap(~season)+
  labs(title = "Temperature changes in different seasons in Moscow",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")


#Russia_seasonal_changes-Linear
ggplot(data = Russia1)+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=year, y= temp, color=season))+
  facet_wrap(~season)+
  labs(title = "Temperature changes in different seasons in Moscow",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")


#Russia_total_combined
ggplot(data = Russia1)+
  geom_point(mapping=aes(x=year, y= temp,color=season))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=year, y= temp, color=season))+
  labs(title = "Temperature changes in different seasons in Moscow",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")
 

#Russia_winterL
ggplot(data = Russia1[Russia1$season=="Winter",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=year, y= temp), color="blue")+
  labs(title = "Temperature changes in winter in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")


#Russia_winter
ggplot(data = Russia1[Russia1$season=="Winter",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(mapping=aes(x=year, y= temp), color="blue")+
  labs(title = "Temperature changes in winter in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")



#Russia_Spring
ggplot(data = Russia1[Russia1$season=="Spring",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(mapping=aes(x=year, y= temp), color="chartreuse3")+
  labs(title = "Temperature changes in Spring in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")


#Russia_Summer
ggplot(data = Russia1[Russia1$season=="Summer",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=year, y= temp), color="gold")+
  labs(title = "Temperature changes in Summer in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")



#Russia_Fall
ggplot(data = Russia1[Russia1$season=="Fall",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(mapping=aes(x=year, y= temp), color="chocolate")+
  labs(title = "Temperature changes in Fall in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")


ggplot(data = Russia1[Russia1$season=="Fall",])+
  geom_point(mapping=aes(x=year, y= temp))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=year, y= temp), color="chocolate")+
  labs(title = "Temperature changes in Fall in Moscow",
       subtitle = "from 1995 to 2019", y= "Temperature")

