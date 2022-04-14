###------------------
###Visualization
###------------------

###Students Name:MALLIPAMU PAVAN KUMAR TEJA
###GNumber:G01354177
library(ggplot2)

rm(list=ls())

data <- read.csv("D://AIT580//AIT580//data//EmployeeAttrition.csv")
#FOR HISTOGRAM
ggplot(data, aes(x=Age,fill=Gender,color="black")) + 
  geom_histogram()
# for histogram to visualize just press zoom option once

#FOR SCATTER PLOT
x<-data$Age
y<-data$MonthlyIncome
plot(x, y, main = "scatter plot of how Monthly Income vary with Age",
     xlab = "Age", ylab = "Monthly Income",
     )
