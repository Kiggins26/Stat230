#Andrew Kiggins-90802281
classdata <- read.csv("ClassData.csv",header =TRUE)
hist(classdata$HeartRate)
qqnorm(classdata$HeartRate)
qqline(classdata$HeartRate)

