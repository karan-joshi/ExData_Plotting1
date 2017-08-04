
#load data
source('load_data.R')

#Open png device
png(filename='plot2.png', width=480, height=480, units='px')

## Create Plot 2
plot(data$Global_active_power~data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

#close png device
dev.off()