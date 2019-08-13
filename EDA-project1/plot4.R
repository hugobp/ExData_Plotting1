plot4<-function(epc){
  
  par(mfcol = c(2,2))
  
  #plot1
  plot(epctmp2$Time,epctmp$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
  box()
  
  #plot2
  plot(epctmp2$Time,epctmp2$Sub_metering_1, type="l", col="black", xlab = "", ylab = "Energy sub metering")
  points(epctmp2$Time,epctmp2$Sub_metering_2,type="l", col="red")
  points(epctmp2$Time,epctmp2$Sub_metering_3,type="l", col="blue")
  legend("topright", pch = c(NA, NA, NA), col=c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1))
  
  #plot3
  plot(epctmp2$Time,epctmp2$Voltage, type="l", xlab = "datetime", ylab = "Voltage")
  
  #plot4
  plot(epctmp2$Time,epctmp2$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")
  
  dev.copy(png, file = "plot4.png")
  dev.off()
}