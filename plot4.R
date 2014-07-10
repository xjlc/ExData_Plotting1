# load data
source("project1.R")

png(file="plot4.png", bg = "transparent", width=480, height=480)

# create plot 4: a four-panel plot

par(mfrow=c(2,2))

# first panel
hist(hh2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

# second panel
plot(hh2$Voltage, type="l", xlab="datetime", ylab="Voltage", xaxt="n", col="black")
# there must be a less clumsy way than this...
x1 <- min(which(weekdays(hh2$DateTime)=="Thursday"))
x2 <- min(which(weekdays(hh2$DateTime)=="Friday"))
x3 <- min(which(weekdays(hh2$DateTime)=="Saturday"))
axis(side=1, at=c(x1, x2, x3), labels=c("Thu", "Fri", "Sat"))

# third panel
plot(hh2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", xaxt="n", col="black")
lines(hh2$Sub_metering_2, col="red")
lines(hh2$Sub_metering_3, col="blue")
axis(side=1, at=c(x1, x2, x3), labels=c("Thu", "Fri", "Sat"))
legend("topright", names(hh)[7:9], lty=1, col=c("black", "red", "blue"), bty="n")

# fourth panel
plot(hh2$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", xaxt="n", col="black")
axis(side=1, at=c(x1, x2, x3), labels=c("Thu", "Fri", "Sat"))

dev.off()
