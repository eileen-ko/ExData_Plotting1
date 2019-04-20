#plot1

data <- read.csv("~/Documents/Coursera R/Exploratory data analysis/Assignment 1/household_power_consumption.txt", sep=";")
homework <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

png("plot1.png", width=480, height=480)
y <-as.numeric(homework$Global_active_power)
hist(y, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()