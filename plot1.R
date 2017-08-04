#load data
source('load_data.R')

#Open png device
png(filename='plot1.png', width=480, height=480, units='px')

## Create the histogram
hist(data$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

#close png device
dev.off()