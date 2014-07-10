# load data
source("project1.R")

# create second plot
png(file="plot2.png", bg = "transparent", width=480, height=480)
plot(hh2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", xaxt="n")
# there must be a less clumsy way than this...
x1 <- min(which(weekdays(hh2$DateTime)=="Thursday"))
x2 <- min(which(weekdays(hh2$DateTime)=="Friday"))
x3 <- min(which(weekdays(hh2$DateTime)=="Saturday"))
axis(side=1, at=c(x1, x2, x3), labels=c("Thu", "Fri", "Sat"))
dev.off()
