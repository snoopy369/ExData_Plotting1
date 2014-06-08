source("proj_readin.R")  ##read in data

#create png file
png(paste(getwd(),"plot1.png",sep="/"),  width = 480, height = 480, units = "px")

#histogram of Global Active Power
hist(as.numeric(elect2$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",
                    breaks=11,right=TRUE,main="Global Active Power")
dev.off()