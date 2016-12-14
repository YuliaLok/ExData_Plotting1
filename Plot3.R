## PLOT 3: making and saving as png

plot3 <- function() {
  
  plot(power$DateTime, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="grey")
  lines(power$DateTime,power$Sub_metering_2,col="red")
  lines(power$DateTime,power$Sub_metering_3,col="blue")
  legend("topright", col=c("grey","red","blue"), 
         c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
         lty=1, lwd=2)
  
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
  cat("plot3.png has been saved in", getwd())
}

plot3()