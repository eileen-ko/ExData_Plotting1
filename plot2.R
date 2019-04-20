#plot2

data <- read.csv("~/Documents/Coursera R/Exploratory data analysis/Assignment 1/household_power_consumption.txt", sep=";")
homework <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

x <- strptime(paste(homework$Date, homework$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
y <-as.numeric(homework$Global_active_power)
png("plot2.png", width=480, height=480)
plot(x, y, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()