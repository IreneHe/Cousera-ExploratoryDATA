housedata <- read.csv("~/Desktop/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";")
data <- housedata[which(housedata$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#plot1
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

