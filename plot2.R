## Coursera: Data Science Specialization
## Module: Exploratory Data Analysis
## Project: Peer Assessment 1
## Author: Marcin Wiśniowski
## Date: 2015-01-11

## Plot 2

source('read_data.R')

my_data <- read_project_data("household_power_consumption.txt", "^[12]/2/2007")
# Create plot in PNG device
png("plot2.png", width=480, height=480, units="px")

plot(strptime(paste(my_data$Date, my_data$Time, sep=" "), format="%Y-%m-%d %T"),
     my_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
