# Coursera - Exploratory Data Analysis - Course Project 1 - Plot 1
#
# This script outputs Plot 1, as specified in the project instructions
#
# 11/03/2018 - Written - Justin Mungal

#read in our data, name it, and then subset it to required dates
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#call hist to create the required histogram
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

# annotate graph with the correct title
title(main="Global Active Power")

