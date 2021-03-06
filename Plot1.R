#Reading, naming and subsetting power consumption data
data <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")

#to save plot in PNG format
png("plot1.png")

#calling the basic plot function
hist(as.numeric(subpower$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.off()
