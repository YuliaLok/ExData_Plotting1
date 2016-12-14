##PLOT 4: making and saving as png

plot4 <- function() {
  
  par(mfrow=c(2,2))
  
  ##plot1
  plot(power$DateTime, power$Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  ##plot2
  plot(power$DateTime,power$Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  ##plot3
  plot(power$DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(power$DateTime,power$Sub_metering_2,col="red")
  lines(power$DateTime,power$Sub_metering_3,col="blue")
  legend("topright", col=c("black","red","blue"), 
         c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
         lty=c(1,1), bty="n", cex=.5) 
  ## note: bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
  
  ##plot4
  plot(power$DateTime, power$Global_reactive_power, type="l",
       xlab="datetime", ylab="Global_reactive_power")
  
  ##saving as png
  dev.copy(png, file="plot4.png", width=480, height=480)
  dev.off()
  cat("plot4.png has been saved in", getwd())
}

plot4()