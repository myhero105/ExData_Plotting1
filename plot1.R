getwd()
DataFile <- "household_power_consumption.txt"
Data <- read.table(DataFile, header=TRUE, sep=";")
head(Data)
names(Data)

Subset_Data <- subset(Data, Data$Date=="1/2/2007" | Data$Date=="2/2/2007")
head(Subset_Data)
Global_active_power <- as.character(Subset_Data$Global_active_power)
Global_active_power
png("plot1.png", width=480, height=480)
hist(as.numeric(Global_active_power), col="red", main="Global Active Power", 
     xlab="Global Active Power(kilowatts)")
dev.off()
