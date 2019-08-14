plot1<-function(epc){
  par(mfrow = c(1,1))
  hist(epc$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
  dev.copy(png, file = "plot1.png")
  dev.off()
}
