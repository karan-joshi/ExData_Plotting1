#load data
source('load_data.R')

#Open png device
png(filename='plot4.png', width=480, height=480, units='px')

## Create Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

with(data, {
  #first subplot
  plot(Global_active_power~dateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  
  #second subplot
  plot(Voltage~dateTime, type="l", 
       ylab="Voltage (volt)", xlab="")
  
  #third subplot
  plot(Sub_metering_1~dateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  
  #specifications of third subplot
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='Blue')
  
  #Add legend to third subplot
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  #fourth subplot
  plot(Global_reactive_power~dateTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

#close png device
dev.off()
