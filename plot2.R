source("proj_readin.R")  ##read in data

##create PNG file
png(paste(getwd(),"plot2.png",sep="/"),  width = 480, height = 480, units = "px")

##Line chart with Global Active Power over time
plot(elect2$Time,as.numeric(elect2$Global_active_power),
        ylab="Global Active Power (kilowatts)",
        xlab="",main=NULL,type='l')
dev.off()