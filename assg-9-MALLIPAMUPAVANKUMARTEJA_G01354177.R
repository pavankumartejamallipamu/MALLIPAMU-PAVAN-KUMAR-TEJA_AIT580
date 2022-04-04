<<<<<<< HEAD
###------------------
###Hypothesis Testing
###------------------

###Students Name:MALLIPAMU PAVAN KUMAR TEJA
###GNumber:G01354177

setwd("D://AIT580//AIT580")

rm(list=ls())

data <- read.csv("D://AIT580//AIT580//data//EmployeeAttrition.csv")


# Your hypothesis testings here...
#1. If the MonthlyIncome of Males is greater than Females
x<-subset(data,Gender=="Male")
y<-subset(data,Gender=="Female")

x1<-x$MonthlyIncome  #monthly income of Males
y1<-y$MonthlyIncome  #monthly income of females

t.test(x1,y1,alternative = "greater",mu=0)
# We fail reject the null hypothesis because the P-value (.8891) is greater than the significance level. 
#Therefore,we can't support the claim


#2. If the WorkLifeBalance of Males is less than Females
x2<-x$WorkLifeBalance
y2<-y$WorkLifeBalance

t.test(x2,y2,alternative = "less",mu=0)
# We fail reject the null hypothesis because the P-value (0.4577) is greater than the significance level. 
#Therefore,we can't support the claim



#3. If the YearsAtCompany of Single is less than Married 
x3<-subset(data,MaritalStatus=="Single")
y3<-subset(data,MaritalStatus=="Married")

x4<-x3$YearsAtCompany
y4<-y3$YearsAtCompany

t.test(x4,y4,alternative = "less",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (0.004973) is less than the
#significance level.


#4. If the EnvironmentalSatisfaction of Attrition=Yes is less than Attrition=No 
x5<-subset(data,Attrition=="Yes")
y5<-subset(data,Attrition=="No")

x6<-x5$EnvironmentSatisfaction
y6<-y5$EnvironmentSatisfaction

t.test(x6,y6,alternative = "less",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (0.0001046) is less than the
#significance level.


#5. If the MonthlyIncome of Manager is greater than Laboratory Technician (Hint: Use
#JobRole to find Manager and Laboratory Technician)
x7<-subset(data,JobRole=="Manager")
y7<-subset(data,JobRole=="Laboratory Technician")

x8<-x7$MonthlyIncome
y8<-y7$MonthlyIncome

t.test(x8,y8,alternative = "greater",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (2.2e-16) is less than the
#significance level.

#6. If YearsAtCompany and DailyRate are correlated with each other
x9<-data$YearsAtCompany
y9<-data$DailyRate
cor.test(x9,y9)
# We fail reject the null hypothesis because the P-value (0.1919) is greater than the significance level. 
#Therefore,we can't support the claim YearsAtCompany and DailyRate are correlated to each other

#7.If YearsAtCompany and MonthlyIncome are correlated with each other 
cor.test(data$YearsAtCompany,data$MonthlyIncome)
#We can reject the null hypothesis and support the claim because the P-value (2.2e-16) is less than the
#significance level.
#there exists a positive correlation between YearsAtCompany and MonthlyIncome

#8. If YearsAtCompany varies depending on individual's MaritalStatus 

res1_aov<-aov(data$YearsAtCompany~factor(data$MaritalStatus))
summary(res1_aov)
#We can reject the null hypothesis and support the claim because the P-value (0.0247) is less than the
#significance level.therefore we can say that YearsAtCompany varies depending on individual MaritalStatus


#9. If MonthlyIncome varies depending on individual's PerformanceRating

res2_aov<-aov(data$MonthlyIncome~factor(data$PerformanceRating))
summary(res2_aov)
# We fail reject the null hypothesis because the P-value (0.512) is greater than the significance level. 
#Therefore,we can't support the claim that MonthlyIncome varies depending 
#on individualS PerformanceRating

#10. If MonthlyIncome varies depending on individual's WorkLifeBalance 

res3_aov<-aov(data$MonthlyIncome~factor(data$WorkLifeBalance))
summary(res3_aov)
# We fail reject the null hypothesis because the P-value (0.607) is greater than the significance level. 
#Therefore,we can't support the claim that MonthlyIncome varies depending 
#on individualS WorkLifeBalance
=======
###------------------
###Hypothesis Testing
###------------------

###Students Name:MALLIPAMU PAVAN KUMAR TEJA
###GNumber:G01354177

setwd("D://AIT580//AIT580")

rm(list=ls())

data <- read.csv("D://AIT580//AIT580//data//EmployeeAttrition.csv")


# Your hypothesis testings here...
#1. If the MonthlyIncome of Males is greater than Females
x<-subset(data,Gender=="Male")
y<-subset(data,Gender=="Female")

x1<-x$MonthlyIncome  #monthly income of Males
y1<-y$MonthlyIncome  #monthly income of females

t.test(x1,y1,alternative = "greater",mu=0)
# We fail reject the null hypothesis because the P-value (.8891) is greater than the significance level. 
#Therefore,we can't support the claim


#2. If the WorkLifeBalance of Males is less than Females
x2<-x$WorkLifeBalance
y2<-y$WorkLifeBalance

t.test(x2,y2,alternative = "less",mu=0)
# We fail reject the null hypothesis because the P-value (0.4577) is greater than the significance level. 
#Therefore,we can't support the claim



#3. If the YearsAtCompany of Single is less than Married 
x3<-subset(data,MaritalStatus=="Single")
y3<-subset(data,MaritalStatus=="Married")

x4<-x3$YearsAtCompany
y4<-y3$YearsAtCompany

t.test(x4,y4,alternative = "less",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (0.004973) is less than the
#significance level.


#4. If the EnvironmentalSatisfaction of Attrition=Yes is less than Attrition=No 
x5<-subset(data,Attrition=="Yes")
y5<-subset(data,Attrition=="No")

x6<-x5$EnvironmentSatisfaction
y6<-y5$EnvironmentSatisfaction

t.test(x6,y6,alternative = "less",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (0.0001046) is less than the
#significance level.


#5. If the MonthlyIncome of Manager is greater than Laboratory Technician (Hint: Use
#JobRole to find Manager and Laboratory Technician)
x7<-subset(data,JobRole=="Manager")
y7<-subset(data,JobRole=="Laboratory Technician")

x8<-x7$MonthlyIncome
y8<-y7$MonthlyIncome

t.test(x8,y8,alternative = "greater",mu=0)
#We can reject the null hypothesis and support the claim because the P-value (2.2e-16) is less than the
#significance level.

#6. If YearsAtCompany and DailyRate are correlated with each other
x9<-data$YearsAtCompany
y9<-data$DailyRate
cor.test(x9,y9)
# We fail reject the null hypothesis because the P-value (0.1919) is greater than the significance level. 
#Therefore,we can't support the claim YearsAtCompany and DailyRate are correlated to each other

#7.If YearsAtCompany and MonthlyIncome are correlated with each other 
cor.test(data$YearsAtCompany,data$MonthlyIncome)
#We can reject the null hypothesis and support the claim because the P-value (2.2e-16) is less than the
#significance level.
#there exists a positive correlation between YearsAtCompany and MonthlyIncome

#8. If YearsAtCompany varies depending on individual's MaritalStatus 

res1_aov<-aov(data$YearsAtCompany~factor(data$MaritalStatus))
summary(res1_aov)
#We can reject the null hypothesis and support the claim because the P-value (0.0247) is less than the
#significance level.therefore we can say that YearsAtCompany varies depending on individual MaritalStatus


#9. If MonthlyIncome varies depending on individual's PerformanceRating

res2_aov<-aov(data$MonthlyIncome~factor(data$PerformanceRating))
summary(res2_aov)
# We fail reject the null hypothesis because the P-value (0.512) is greater than the significance level. 
#Therefore,we can't support the claim that MonthlyIncome varies depending 
#on individualS PerformanceRating

  #10. If MonthlyIncome varies depending on individual's WorkLifeBalance 

res3_aov<-aov(data$MonthlyIncome~factor(data$WorkLifeBalance))
summary(res3_aov)
# We fail reject the null hypothesis because the P-value (0.607) is greater than the significance level. 
#Therefore,we can't support the claim that MonthlyIncome varies depending 
#on individualS WorkLifeBalance
>>>>>>> a6613d79da285aee1011ac3567a2277cc34d1083
