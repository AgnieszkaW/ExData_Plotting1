setwd("E:/!/R/KURS")

dane<-read.table("E:/!/R/KURS/nowy.txt",header=T,sep=";") 

#fix(dane)
#str(dane)

min(dane$Voltage)
max(dane$Voltage)


png(file="plot4.png",width = 480, height = 480)

par(mfrow=c(2,2))

#1,1
ts.plot(dane$Global_active_power,gpars=list(xlab="", ylab="Global Active Power (kilowatts)", lty=c(1:3),axes=F,xlim=c(0,2900)))
axis(2,at=seq(0,7,2))
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()

#1,2

ts.plot(dane$Voltage,gpars=list(xlab="datatime", ylab="Voltage", lty=c(1:3),axes=F,xlim=c(0,2900)))
axis(2)
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()

#2,1

ts.plot(dane$Global_intensity,gpars=list(xlab="", ylab="Energy sub metering",type="n",ylim=c(0,38),axes=F))
lines(dane$Sub_metering_1,type="l")
lines(dane$Sub_metering_2,col="red",type="l")
lines(dane$Sub_metering_3,col="blue",type="l")
axis(2,at=seq(0,40,10))
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid",lwd=2)

#2,2
ts.plot(dane$Global_reactive_power,gpars=list(xlab="datatime", ylab="Global_reactive_power", lty=c(1:3),axes=F,xlim=c(0,2900)))
axis(2)
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()

dev.off()





