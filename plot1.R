

## March 23, 2020
# 
# Coursera - Data Science Specialization
# 
# Course 4. Exploratory Data Analysis
#
# Peer Graded Assignment 01
#
# To create plot 01 as required (details stored locally and on GitHub)
#
##



## @@@@@ Dependencies
## Using base functions



## @@@@@ Import data

z_Data <- read.table("./Data Files/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

head(z_Data)
str(z_Data)


d_Household_Pw_Cons_20070201_20070202 <- z_Data[z_Data$Date %in% c("1/2/2007", "2/2/2007"), ]

d_Household_Pw_Cons_20070201_20070202$date_time <- strptime(paste(d_Household_Pw_Cons_20070201_20070202$Date, d_Household_Pw_Cons_20070201_20070202$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
d_Household_Pw_Cons_20070201_20070202$Global_active_power <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Global_active_power)
d_Household_Pw_Cons_20070201_20070202$Global_reactive_power <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Global_reactive_power)
d_Household_Pw_Cons_20070201_20070202$Voltage <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Voltage)
d_Household_Pw_Cons_20070201_20070202$Global_intensity <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Global_intensity)
d_Household_Pw_Cons_20070201_20070202$Sub_metering_1 <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Sub_metering_1)
d_Household_Pw_Cons_20070201_20070202$Sub_metering_2 <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Sub_metering_2)
d_Household_Pw_Cons_20070201_20070202$Sub_metering_3 <- as.numeric(d_Household_Pw_Cons_20070201_20070202$Sub_metering_3)

str(d_Household_Pw_Cons_20070201_20070202)



## @@@@@ Assignment task 01 - Global Active Power Histogram

hist(d_Household_Pw_Cons_20070201_20070202$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.copy(png, width = 480, height = 480, file = "./Outputs/plot1.png")
dev.off()





## @@@@@ End  



