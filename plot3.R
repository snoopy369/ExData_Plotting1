png("/Users/snoopy369/git/ExData_Plotting1/plot3.png",  width = 480, height = 480, units = "px")


plot(elect2$Time,as.numeric(elect2$Sub_metering_1),
       ylab="Energy sub metering",
       xlab="",main=NULL,type='l',xaxt=NULL)
plotSubMetering <- function(var,color) {
  lines(elect2$Time,as.numeric(var),
     ylab="Global Active Power (kilowatts)",
     xlab=NULL,main=NULL,type='l',col=color,xaxt=NULL)
}

plotSubMetering(elect2$Sub_metering_2,"red")
plotSubMetering(elect2$Sub_metering_3,"blue")
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
          col=c("black","red","blue"),lty=1)

dev.off()