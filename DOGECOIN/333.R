library(readxl)
DOGE_USD <- read_excel("C:/Users/Arshiya/Downloads/DOGE-USD - Copy.xlsx")
View(DOGE_USD)

library(ggplot2)

#daily_Open
ggplot(data=DOGE_USD)+
  geom_point(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  geom_line(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
   labs(title = "Dogecoin open price", subtitle = "From 1st January to 3rd September",
       x="Time", y = "Price(USD)")+
  annotate("text", x=as.POSIXct("2021-01-01"), y = 0.004681, label = "1
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-01-29"), y = 0.043734, label = "2
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-02-06"), y =0.046931, label = "3
  
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-04-17"), y =0.366098, label = "4
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-05-08"), y =0.687801, label = "5
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-05-15"), y =0.559668, label = "6
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-05-31"), y =0.301949, label = "7",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-06-03"), y =0.423739, label = "8
           ",size = 6, color="red")+
  annotate("text", x=as.POSIXct("2021-08-08"), y =0.261956, label = "9
           ",size = 6, color="red")+
    annotate("text", x=as.POSIXct("2021-08-16"), y =0.340165, label = "10
           ",size = 6, color="red")
  


#Daily open price with smooth scaling 
ggplot(data=DOGE_USD)+
  geom_point(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  geom_line(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  geom_smooth(mapping = aes(x=Date, y=as.numeric(Open)),color="red")
  



#Highest daily price variations
ggplot(data=DOGE_USD)+
  geom_line(mapping = aes(x=Date, y=as.numeric(High-Low),color=as.numeric(Open)))+
   labs(title = "Highest daily price changes(DOGECOIN)", subtitle = "From 1st January to 3rd September")+
  labs(title = "High-Low price ", subtitle = "From 1st January to 3rd September", x="Time", y = "High-low")

       
       
#mix1       
ggplot(data=DOGE_USD)+
  geom_line(mapping = aes(x=Date, y=as.numeric(High-Low),color=as.numeric(Open)),color="red")+
  geom_point(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  geom_line(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  labs(title = "Comparision between plot1 & and plot4", subtitle = "From 1st January to 3rd September", x="Time", y = "")
       
       
       



#price difference  
open_daily=c(0)

for (i in  1:246) {
  open_daily = c(open_daily, DOGE_USD$Open[i]-DOGE_USD$Open[i-1])
}
 
ggplot(data=DOGE_USD)+
  geom_point(mapping = aes(x=Date, y=open_daily,color=open_daily))+
  geom_line(mapping = aes(x=Date, y=open_daily,color=open_daily))+
labs(title = "x", subtitle = "From 1st January to 3rd September",
     x="Time", y = "Price changes")






#mix2
ggplot(data=DOGE_USD)+
  geom_point(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  geom_line(mapping = aes(x=Date, y=as.numeric(Open),color=as.numeric(Open)))+
  labs(title = "Dogecoin open price", subtitle = "From 1st January to 3rd September",
       x="Time", y = "")+
  geom_point(mapping = aes(x=DOGE_USD$Date, y=open_daily,color=open_daily))+
  geom_line(mapping = aes(x=Date, y=open_daily,color=open_daily))


        
