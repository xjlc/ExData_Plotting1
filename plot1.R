# load data
source("project1.R")

# create first plot: a histogram of Global_active_power
png(file="plot1.png", bg = "transparent", width=480, height=480)
hist(hh2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()