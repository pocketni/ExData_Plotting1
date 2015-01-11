power <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", as.is=c("Date","Time"))
datea <- "1/2/2007"
dateb<-"2/2/2007"
powerseta <- subset(power, Date == datea)
powersetb <-subset(power,Date==dateb)
powerset <- rbind(powerseta,powersetb)
attach(powerset)

####
#problem 3

png(file="plot3.png", width=480,height=480)
plot(Sub_metering_1,type="l", ylab="Energy Sub Metering", xlab="",xaxt="n") 
lines(Sub_metering_2,type="l",col="red")
lines(Sub_metering_3,type="l",col="blue")
axis(1,at=c(0,1440,2880),labels=c("Thursday","Friday","Saturday"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()