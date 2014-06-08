png("/Users/snoopy369/git/ExData_Plotting1/plot2.png",  width = 480, height = 480, units = "px")
plot(elect2$Time,as.numeric(elect2$Global_active_power),
        ylab="Global Active Power (kilowatts)",
        xlab="",main=NULL,type='l')
dev.off()