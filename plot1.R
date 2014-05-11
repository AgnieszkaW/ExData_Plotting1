setwd("E:/!/R/KURS")

dane<-read.table("E:/!/R/KURS/nowy.txt",header=T,sep=";") 

fix(dane)


png(file="plot1.png",width = 480, height = 480)
hist(dane[,3],col="red",xlab="Global Active Power (kilowatts)",main=("Global Active Power"))
dev.off()


