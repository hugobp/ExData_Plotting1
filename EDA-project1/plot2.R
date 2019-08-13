plot2<-function(epc){
  par(mfrow = c(1,1))
  plot(epctmp2$Time,epctmp$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")
  box()
  dev.copy(png, file = "plot2.png")
  dev.off()
}