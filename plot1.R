##read data from txt file
data_con<-read.table("household_power_consumption.txt",skip = 1,sep = ";",na.strings = "?")
##add columns names
names(data_con)<-c("Date", "Time","Global_active_power","Global_reactive_power","Voltage Global_intensity","Sub_metering_1",
                    "Sub_metering_2" ,"Sub_metering_3")
##subset data
subpower_data<-subset(data_con,data_con$Date=="2/2/2007" | data_con$Date=="1/2/2007")
## draw histogram
hist(as.numeric(subpower_data$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
## save histogram .png file
dev.copy(png, file="plot1.png", height=480, width=480);dev.off()