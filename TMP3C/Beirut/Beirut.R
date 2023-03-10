library(readxl)
l1 <- read_excel("C:/Users/Arshiya/Downloads/l1.xlsx")
View(l1)

library(ggplot2)
#Beirut_seasonal_changes-Linear
ggplot(data = l1)+
  geom_point(mapping=aes(x=Year, y= Temperature))+
  geom_smooth(method = "lm",se = FALSE, mapping=aes( x=Year, y= Temperature, color=Season))+
  facet_wrap(~Season)+
  labs(title = "Temperature changes in different seasons in Beirut",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")



#Beirut_seasonal_changes-Loess
ggplot(data = l1)+
  geom_point(mapping=aes(x=Year, y= Temperature))+
  geom_smooth(method = "loess", mapping=aes( x=Year, y= Temperature, color=Season))+
  facet_wrap(~Season)+
  labs(title = "Temperature changes in different seasons in Beirut",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")


#Beirut_total_combined-Linear
ggplot(data = l1)+
  geom_point(mapping=aes(x=Year, y= Temperature,color=Season))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year, y= Temperature, color=Season))+
  labs(title = "Temperature changes in different seasons in Beirut",
       subtitle = "From 1995 to 2019", y= "Temperature(C)")


#Beirut_Total
ggplot(data = l1[l1$Season=="Total",])+
  geom_point(mapping=aes(x=Year, y= Temperature))+
  geom_smooth(method = "lm",se = FALSE,mapping=aes(x=Year, y= Temperature), color="black")+
  labs(title = "Annual Temperature changes in Beirut",
       subtitle = "from 1995 to 2019", y= "Temperature")

