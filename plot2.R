power <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", as.is=c("Date","Time"))
datea <- "1/2/2007"
dateb<-"2/2/2007"
powerseta <- subset(power, Date == datea)
powersetb <-subset(power,Date==dateb)
powerset <- rbind(powerseta,powersetb)
attach(powerset)

####
#problem 2

png(file="plot2.png", width=480,height=480)
plot(Global_active_power,type="l", ylab="Global Active Power (kilowatts)", xlab="",xaxt="n") 
axis(1,at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
dev.off()
