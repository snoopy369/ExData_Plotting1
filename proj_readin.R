require(data.table)
colClasses_study <- c(rep("character",9))
dates_study<- c('1/2/2007','2/2/2007')
elect <- fread("/Users/snoopy369/R/Exploration 1/household_power_consumption.txt", header=T, na.strings="?",
           sep=";",stringsAsFactors=F,colClasses=colClasses_study)[Date %in% dates_study]
elect2 <- as.data.frame(elect)
elect2$Date= as.Date(elect$Date,"%d/%m/%Y")
elect2$Time <- strptime(paste(elect$Date,elect$Time," "),"%d/%m/%Y %H:%M:%S")