source("proj_readin.R")  #read in data

#create a new PNG
png(paste(getwd(),"plot4.png",sep="/"),  width = 480, height = 480, units = "px")

#create grid
par(mfcol=c(2,2))

#plot 1 - Global Active Power over time
plot(elect2$Time,as.numeric(elect2$Global_active_power),
     ylab="Global Active Power",
     xlab="",main=NULL,type='l')

#plot 2  - three different types of sub metering over time
plot(elect2$Time,as.numeric(elect2$Sub_metering_1),
     ylab="Energy sub metering",
     xlab="",main=NULL,type='l',xaxt=NULL)
plotSubMetering <- function(var,color) {
  lines(elect2$Time,as.numeric(var),
        ylab="Global Active Power",
        xlab="",main=NULL,type='l',col=color,xaxt=NULL)
}

plotSubMetering(elect2$Sub_metering_2,"red")
plotSubMetering(elect2$Sub_metering_3,"blue")
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=1,bty="n")

#plot 3 - Voltage over time
plot(elect2$Time,as.numeric(elect2$Voltage),
     ylab="Voltage",
     xlab="",main=NULL,type='s')

#plot 4 - Global Reactive Power over time
plot(elect2$Time,as.numeric(elect2$Global_reactive_power),
     ylab="Global Reactive Power",
     xlab="",main=NULL,type='s')

dev.off()