## PLOT 1: making and saving as png

plot1 <- function() {
  
  hist(power$Global_active_power, 
       col="red", 
       xlab ="Global Active Power (kilowatts)",
       main = "Global Active Power")
  
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
  cat("Plot1.png has been saved in", getwd())
}

plot1()