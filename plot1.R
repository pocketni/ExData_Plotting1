power <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", as.is=c("Date","Time"))
datea <- "1/2/2007"
dateb<-"2/2/2007"
powerseta <- subset(power, Date == datea)
powersetb <-subset(power,Date==dateb)
powerset <- rbind(powerseta,powersetb)

####
#problem 1

png(file="plot1.png",width=480,height=480)
hist(powerset$Global_active_power,col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power", ylim=c(0,1200))
dev.off()