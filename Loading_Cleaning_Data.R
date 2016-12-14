## Pre-processing Data: Loading, Reading and Clenaing

if(!file.exists("exdata-data-household_power_consumption.zip")) {
  temp <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  file <- unzip(temp)
  unlink(temp)
}

power <- read.table(text = grep("^[1,2]/2/2007",readLines(file),value=TRUE), sep=";",na.strings="?")
colnames(power)<- c("Date","Time",
                    "Global_active_power",
                    "Global_reactive_power",
                    "Voltage","Global_intensity",
                    "Sub_metering_1",
                    "Sub_metering_2",
                    "Sub_metering_3" )

DateTime <- paste(power$Date,power$Time)
power$DateTime <- strptime(DateTime, "%d/%m/%Y %H:%M:%S")

##or power$DateTime <-strptime(DateTime, "%d/%m/%Y %T")