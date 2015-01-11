## Coursera: Data Science Specialization
## Module: Exploratory Data Analysis
## Project: Peer Assessment 1
## Author: Marcin Wiśniowski
## Date: 2015-01-11

## Plot 1

source('read_data.R')

my_data <- read_project_data("household_power_consumption.txt", "^[12]/2/2007")
# Create plot in PNG device
png("plot1.png", width=480, height=480, units="px")

hist(my_data$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")

dev.off()
