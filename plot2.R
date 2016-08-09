#read in the data
?read.table
rawData<-read.table("./EDA_W1/household_power_consumption.txt",header = TRUE, sep = ";")
rawData$Date <- as.Date(rawData$Date, format="%d/%m/%Y")

#subset the data to only the dates 2007-02-01 and 2007-02-02

filteredData <- subset(rawData, Date >= "2007-02-01" & Date <= "2007-02-02") 


#start the PNG device

png(filename = "plot2.png", width = 480, height = 480)

#Plot

dateTime <- paste(filteredData$Date, filteredData$Time)
dateTime <- as.POSIXlt(dateTime)
plot(dateTime,as.numeric(as.character(filteredData$Global_active_power)), type = "l",xlab="",ylab = "Global Active Power (kilowatts)")

#turn the PNG device off

dev.off()