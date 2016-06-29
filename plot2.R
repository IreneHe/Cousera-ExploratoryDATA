housedata <- read.csv("~/Desktop/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";")
data <- housedata[which(housedata$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#plot2
datetime <- strptime(paste(data$Date, data$Time, sep=" "), format = "%d/%m/%Y %H:%M:%S", tz ="")
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()