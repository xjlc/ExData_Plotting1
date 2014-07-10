oldd <- setwd("~/Documents/teaching/coursera/Exploratory Data Analysis/projects/ExData_Plotting1")

if (!file.exists("../hh2.rda")) {
	# read data, assume 2,100,000 lines and most columns as numeric; "?" is additional NA string
	hh <- read.csv("../household_power_consumption.txt", sep=";", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), nrows=2100000, na.strings=c("NA", "na", "?"))

	# convert Date and Time to POSIXct, select data for valid dates according to instruction
	hh$DateTime <- as.POSIXct(strptime(paste(hh$Date, hh$Time), "%d/%m/%Y %H:%M:%S"))
	hh$Date2 <- as.Date(hh$DateTime)
	hh2 <- subset(hh, hh$Date2 >= "2007-02-01" & hh$Date2 <= "2007-02-02")
	# rm(hh)

	save("hh2", file="../hh2.rda")
} else {
	load("../hh2.rda")
}
