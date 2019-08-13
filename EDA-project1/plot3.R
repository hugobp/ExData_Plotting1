plot3<-function(epc){
  par(mfrow = c(1,1))
  plot(epctmp2$Time,epctmp2$Sub_metering_1, type="l", col="black")
  points(epctmp2$Time,epctmp2$Sub_metering_2,type="l", col="red")
  points(epctmp2$Time,epctmp2$Sub_metering_3,type="l", col="blue")
  legend("topright", pch = c(NA, NA, NA), col=c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), lty = c(1, 1, 1))
  dev.copy(png, file = "plot3.png")
  dev.off()
}