#read in the data
?read.table
rawData<-read.table("./EDA_W1/household_power_consumption.txt",header = TRUE, sep = ";")
rawData$Date <- as.Date(rawData$Date, format="%d/%m/%Y")

#subset the data to only the dates 2007-02-01 and 2007-02-02

filteredData <- subset(rawData, Date >= "2007-02-01" & Date <= "2007-02-02") 


#start the PNG device
#start the PNG device

png(filename = "plot3.png", width = 480, height = 480)

#Plot

plot(dateTime, as.numeric(as.character(filteredData$Sub_metering_1)),type = "l",,xlab = "", ylab = "Energy sub metering")
lines(dateTime,as.numeric(as.character(filteredData$Sub_metering_2)),col = "red")
lines(dateTime, as.numeric(as.character(filteredData$Sub_metering_3)),col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), lty =1)

#turn the PNG device off

dev.off()