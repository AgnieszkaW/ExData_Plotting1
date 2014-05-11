setwd("E:/!/R/KURS")

dane<-read.table("E:/!/R/KURS/nowy.txt",header=T,sep=";") 

#fix(dane)
#str(dane)

png(file="plot3.png",width = 480, height = 480)

ts.plot(dane$Global_intensity,gpars=list(xlab="", ylab="Energy sub metering",type="n",ylim=c(0,38),axes=F))
lines(dane$Sub_metering_1,type="l")
lines(dane$Sub_metering_2,col="red",type="l")
lines(dane$Sub_metering_3,col="blue",type="l")
axis(2,at=seq(0,40,10))
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid",lwd=2)


dev.off()





