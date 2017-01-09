getwd()
DataFile <- "household_power_consumption.txt"
Data <- read.table(DataFile, header=TRUE, sep=";")
head(Data)
names(Data)

Subset_Data <- subset(Data, Data$Date=="1/2/2007" | Data$Date=="2/2/2007")
head(Subset_Data)
Subset_Data$Time <- strptime(paste(Subset_Data$Date, Subset_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power <- as.character(Subset_Data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(Subset_Data$Time, as.numeric(Global_active_power), 
     type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off()

