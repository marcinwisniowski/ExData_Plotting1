## Coursera: Data Science Specialization
## Module: Exploratory Data Analysis
## Project: Peer Assessment 1
## Author: Marcin Wiśniowski
## Date: 2015-01-11

## Script used for reading the data

# filename which are useed for this assignment is: household_power_consumption.txt and it is not
# a part of this repository.
# Usage:
# my_data <- read_project_data("household_power_consumption.txt", "^[12]/2/2007")
read_project_data <- function(file_name, subset_pattern) {
    column_classes <- c("character", "character", rep("numeric", 7))
    column_names <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage",
                      "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    lines_to_read <- grep(subset_pattern, readLines(file_name))
    start_line <- lines_to_read[1]-1
    num_lines <- lines_to_read[length(lines_to_read)] - start_line

    data <- read.table(file_name, header=FALSE, colClasses=column_classes, col.names=column_names,
                       sep=";", na.strings=c("?"), skip=start_line, nrows=num_lines)
    # Data Refining
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")

    data
}
