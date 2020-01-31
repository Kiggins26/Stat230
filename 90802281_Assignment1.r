#Andrew Kiggins
#Question 1:
ClassData <- read.csv("ClassData.csv", header=T)
head(ClassData)
attach(ClassData)
options(digits=3)
table(PhoneBrand)
Niphones <- 47
pre = 47 / nrow(ClassData)
pre*100
#pre is the prec of iphone users 53.4%
table(Gender,PhoneBrand)
#Out of the 47 iphone users 14 out 47  were female and 33 out of 47 were male. 29.8% female and 70.2% male for iphone users.
#Question 2:
hist(HaircutCost,main="HAIRCUTCOST-HIST")
boxplot(HaircutCost, main="HAIRCUTCOST-BOXPLOT")
hist(Distance,main="Distance-hist")
boxplot(Distance, main="DISTANCE-BP")
hist(WorkHours,main="WORKHOURS-HIST")
boxplot(WorkHours,main="WORKHOURS-BP")
#Question 3/4:
boxplot(PhoneBill ~ Student, main = "Canadian spending vs INT")
tapply(PhoneBill, Student, summary)
