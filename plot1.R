png("/Users/snoopy369/git/ExData_Plotting1/plot1.png",  width = 480, height = 480, units = "px")
hist(as.numeric(elect2$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",
                    breaks=11,right=TRUE,main="Global Active Power")
dev.off()