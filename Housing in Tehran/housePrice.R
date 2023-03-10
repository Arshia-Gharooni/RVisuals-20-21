library(readxl)
housePrice <- read_excel("E:/Programs/R/2-Housing in Tehran/housePrice.xlsx")
View(housePrice)



#instal tidyverse first
library(tidyverse)

d1 = housePrice %>%
  filter(Address=="Persian Gulf Martyrs Lake" |Address=="Pirouzi"|
           Address=="Punak"|Address=="Elahieh"|
           Address=="Zaferanieh" | Address=="Velenjak")
view(d1)



#Total
ggplot(data=d1)+
  geom_jitter(aes(x=Area, y=log(PriceUSD), 
                  color=-PriceUSD, size=PriceUSD))+
  xlab('Area')+ 
  ylab('Log(Price USD)')+
  facet_grid(d1$Room~d1$Address)+
  labs(title="Housing price in Tehran 2020",
       subtitle ="Price comparision of 6 different neighborhoods",
       caption = "3 of these neighborhoods are wealthy neighborhoods and the other 3 are midranged neighborhoods")



ggplot(data=d1)+
  geom_jitter(aes(x=Area, y=log(PriceUSD), 
                  shape = Address, color=Address))+
  facet_wrap(~d1$Room)+
  scale_colour_brewer(palette = "Set2")+
  labs(title="Housing price in Tehran 2020",
       subtitle ="Price comparision of 6 different neighborhoods",
       caption = "3 of these neighborhoods are wealthy neighborhoods and the other 3 are midranged neighborhoods")



ggplot(data=d1)+
  geom_jitter(aes(x=Area, y=log(PriceUSD), 
                  shape = Address, color=Address))+
  geom_smooth(aes(x=Area, y=log(PriceUSD)))+
  facet_wrap(~d1$Room)+
  scale_colour_brewer(palette = "Set2")+
  labs(title="Housing price in Tehran 2020",
       subtitle ="Price comparision of 6 different neighborhoods",
       caption = "3 of these neighborhoods are wealthy neighborhoods and the other 3 are midranged neighborhoods")



#Each
ggplot(data=d1)+
  geom_jitter(aes(x=Area, y=(PriceUSD/Area), 
                  shape = Address, color=Address))+
  geom_smooth(aes(x=Area, y=PriceUSD/Area),color="black")+
  facet_wrap(~d1$Address)+
  scale_colour_brewer(palette = "Set2")+
  labs(title="Housing price in Tehran 2020",
       subtitle ="Price per square meter comparision of 6 different neighborhoods",
       caption = "3 of these neighborhoods are wealthy neighborhoods and the other 3 are midranged neighborhoods")




ggplot(data=d1)+
  geom_jitter(aes(x=Address, y=(PriceUSD/Area), 
                  shape = Address, color=Address))+
  facet_grid(d1$Parking~d1$Elevator)+
  scale_colour_brewer(palette = "Set2")+
  labs(title="Housing price in Tehran 2020",
       subtitle ="Price per square meter comparision of 6 different neighborhoods with 2 Characteristic.",
       caption = "3 of these neighborhoods are wealthy neighborhoods and the other 3 are midranged neighborhoods")
