housedata <- read.csv("~/Desktop/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";")
data <- housedata[which(housedata$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#plot3
subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)
datetime <- strptime(paste(data$Date, data$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S", tz ="")
png("plot.png", width=480, heigh=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()