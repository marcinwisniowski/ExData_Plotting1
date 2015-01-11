## Coursera: Data Science Specialization
## Module: Exploratory Data Analysis
## Project: Peer Assessment 1
## Author: Marcin Wiśniowski
## Date: 2015-01-11

## Plot 4

source('read_data.R')

my_data <- read_project_data("household_power_consumption.txt", "^[12]/2/2007")
days <- strptime(paste(my_data$Date, my_data$Time, sep=" "), format="%Y-%m-%d %T")

# Create plot in PNG device
png("plot4.png", width=480, height=480, units="px")
# Prepare plot Grid 2x2
par(mfrow = c(2, 2))

# 1,1
plot(days, my_data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
# 1,2
plot(days, my_data$Voltage, type="l", xlab="", ylab="Voltage")
# 2,1
plot(days, my_data$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(days, my_data$Sub_metering_2, col="red")
lines(days, my_data$Sub_metering_3, col="blue")

legend("topright", lty=1,col = c("black", "red", "blue"),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
# 2,2
plot(days, my_data$Global_reactive_power, type="l", xlab="", ylab="Global_reactive_power")

dev.off()
