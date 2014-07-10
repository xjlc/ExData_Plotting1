# load data
source("project1.R")

# create third plot
png(file="plot3.png", bg = "transparent", width=480, height=480)
plot(hh2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", xaxt="n", col="black")
lines(hh2$Sub_metering_2, col="red")
lines(hh2$Sub_metering_3, col="blue")
# there must be a less clumsy way than this...
x1 <- min(which(weekdays(hh2$DateTime)=="Thursday"))
x2 <- min(which(weekdays(hh2$DateTime)=="Friday"))
x3 <- min(which(weekdays(hh2$DateTime)=="Saturday"))
axis(side=1, at=c(x1, x2, x3), labels=c("Thu", "Fri", "Sat"))
legend("topright", names(hh)[7:9], lty=1, col=c("black", "red", "blue"))

dev.off()
