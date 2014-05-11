setwd("E:/!/R/KURS")

dane<-read.table("E:/!/R/KURS/nowy.txt",header=T,sep=";") 

fix(dane)
str(dane)

png(file="plot2.png",width = 480, height = 480)

ts.plot(dane$Global_active_power,gpars=list(xlab="", ylab="Global Active Power (kilowatts)", lty=c(1:3),axes=F,xlim=c(0,2900)))
axis(2,at=seq(0,7,2))
axis(1,at=seq(0,3000,1450),labels=c("Thu","Fri","Sat"))
box()

dev.off()
 
