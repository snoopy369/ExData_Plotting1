source("proj_readin.R")  ##read in data

##Create PNG file
png(paste(getwd(),"plot3.png",sep="/"),  width = 480, height = 480, units = "px")


##Initial plot (black lines)
plot(elect2$Time,as.numeric(elect2$Sub_metering_1),
       ylab="Energy sub metering",
       xlab="",main=NULL,type='l',xaxt=NULL)

##Function to do other colors
plotSubMetering <- function(var,color) {
  lines(elect2$Time,as.numeric(var),
     ylab="Global Active Power (kilowatts)",
     xlab=NULL,main=NULL,type='l',col=color,xaxt=NULL)
}

##Add other color lines
plotSubMetering(elect2$Sub_metering_2,"red")
plotSubMetering(elect2$Sub_metering_3,"blue")

##Add legend
legend(x="topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
          col=c("black","red","blue"),lty=1)

dev.off()