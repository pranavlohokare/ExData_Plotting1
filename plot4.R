

## March 23, 2020
 # 
 # Coursera - Data Science Specialization
 # 
 # Course 4. Exploratory Data Analysis
 #
 # Peer Graded Assignment 01
 #
 # To create plot 03 as required (details stored locally and on GitHub)
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



## @@@@@ Assignment task 04 - Four plots

  par(mfrow = c(2, 2))
  
  ## Task 2 plot
  with(d_Household_Pw_Cons_20070201_20070202, plot(date_time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
  
  ## Voltage vs. Date Time
  with(d_Household_Pw_Cons_20070201_20070202, plot(date_time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
  
  ## Task 3 plot
  with(d_Household_Pw_Cons_20070201_20070202, plot(date_time, Sub_metering_1, type = "l", xlab = "", ylab = "Energy Submetering"))
  with(d_Household_Pw_Cons_20070201_20070202, lines(date_time, Sub_metering_2, type = "l", col = "red"))
  with(d_Household_Pw_Cons_20070201_20070202, lines(date_time, Sub_metering_3, type = "l", col = "blue"))
  
  # NOT addng legends - as this is cluttering the chart
  # legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
  
  ## Global reactive power vs datetime
  with(d_Household_Pw_Cons_20070201_20070202, plot(date_time, Global_reactive_power, type = "l", xlab = "datetime"))
  
  
  dev.copy(png, width = 480, height = 480, file = "./Outputs/plot4.png")
  dev.off()





## @@@@@ End  



