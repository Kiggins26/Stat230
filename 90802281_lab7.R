#Andrew Kiggins(90802281) and Hasan Siddiqui(19331347)
OGSensorData <-read.csv("sensor.csv",header=TRUE)
head(OGSensorData,20)
sensors_clean <-  subset(OGSensorData, value >= 0 & value <= 100)
maxybo  <-  subset(sensors_clean, siteid == 2)
rowfinder  <-  subset(sensors_clean, siteid == 1 & sensorid  == 2)
data_summary =  list(nrow(sensors_clean),min(sensors_clean$value),mean(sensors_clean[,"value"]),max(maxybo$value),nrow(rowfinder))
hist(sensors_clean$value,main = "historgram of clean data")
boxplot(value~sensorid,data=sensors_clean,main="boxplot",xlab="id",ylab="value",col="orange",border="brown")

#Our null  hypothesis is that our dataset(Sensor_clean) will have a mean value of  45
#Our Alt  hypothesis is that our dataset(Sensor_clean) does not equal a mean of 45 
t.test(x=sensors_clean$value,mu=45)
#we fail to confirm our null hypothesis, as the estimated  mean is about  41.90109

#Our null  hypothesis is that our dataset(new_data) which only has site1 and site2 will have a mean value of  45
#Our Alt  hypothesis is that our dataset(new data) which only has site1 and site2 does not equal a mean of 45 
new_data <-  subset(sensors_clean, siteid == 1 |  siteid == 2)
t.test(x=new_data$value,mu=45)
#we reject our null hypothesis, as our mean is estimated to be 41.7847
AdData <-read.csv("advertising.csv",header=TRUE)
tail(AdData,15)
attach(AdData)
plot(Newspaper,Sales)
plot(Radio,Sales)
plot(TV,Sales)
LinMod = lm(Sales ~ TV)
summary(LinMode)
abline(LinMod,col = "Red")
