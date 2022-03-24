###--------------------------------------
#Student Name:MALLIPAMU PAVAN KUMAR TEJA
#GNumber:G01354177
###--------------------------------------
library(dplyr)
rm(list=ls())

data <- read.csv("D://AIT580//MALLIPAMU-PAVAN-KUMAR-TEJA_AIT580//AIT580//data//EmployeeAttrition.csv")

# this is just for testing to use "print" statement.
print(data[1,])



# a. Find the number of rows and columns in the dataset (5 points)
print(nrow(data))
print(ncol(data))


# b. Find the maximum Age in the dataset (5 points)
print(max(data$Age))



# c. Find the minimum DailyRate in the dataset (5 points)
print(min(data$DailyRate))


# d. Find the average/mean MontlyIncome in the dataset (5 points)
print(mean(data$MonthlyIncome))


# e. How many employees rated WorkLifeBalance as 1 (5 points)
print(length(which( data$WorkLifeBalance == 1)))


# f. What percent of total employees have TotalWorkingYears less than equal to 5? Also calculate the percentage for TotalWorkingYears greater than 5 (5 points)
print(length(which(data$TotalWorkingYear<=5))/sum(data$TotalWorkingYear))
print(length(which(data$TotalWorkingYear>5))/sum(data$TotalWorkingYear))

# g. Print EmployeeNumber, Department and MaritalStatus for those employees whose Attrition is Yes and RelationshipSatisfaction is 1 and YearsSinceLastPromotion is greater than 3 (10 points)
data1<-subset(data,RelationshipSatisfaction==1 & Attrition=='Yes'& YearsSinceLastPromotion >3,select = c(EmployeeNumber, Department, MaritalStatus))
print(data1)


# h. Find the mean, median, mode, standard deviation and frequency distribution of EnvironmentSatisfaction for males and females separately. (Hint: For frequency distribution use table() function (10 points)
library(dplyr)
maledata<- data %>% filter(Gender == "Male")
femaledata<- data %>% filter(Gender == "Female")
EnvironmentalMale<- maledata$EnvironmentSatisfaction
EnvironmentalFemale<- femaledata$EnvironmentSatisfaction
# mean of the environment satisfaction data for males
print(mean(EnvironmentalMale))
# mean of the environment satisfaction data for females
print(mean(EnvironmentalFemale))
# median of the environment satisfaction data for males
print(median(EnvironmentalMale))
# median of the environment satisfaction data for females
print(median(EnvironmentalFemale))
# standard deviation of the environment satisfaction data for males
print(sqrt(var(EnvironmentalMale)))
# standard deviation of the environment satisfaction data for females
print(sqrt(var(EnvironmentalFemale)))
# frequency distribution of the environment satisfaction data for males
table(EnvironmentalMale)
# frequency distribution of the environment satisfaction data for females
table(EnvironmentalFemale)
# mode of the environment satisfaction data for males
find_mode <- function(EnvironmentalMale) {
  u <- unique(EnvironmentalMale)
  tab <- tabulate(match(EnvironmentalMale, u))
  u[tab == max(tab)]
}
find_mode(EnvironmentalMale)
# mode of the environment satisfaction data for females
find_mode <- function(EnvironmentalFemale) {
  u <- unique(EnvironmentalFemale)
  tab <- tabulate(match(EnvironmentalFemale, u))
  u[tab == max(tab)]
}
find_mode(EnvironmentalFemale)


#part2
#1. Identify data types for each attribute in the dataset
data1<- read.csv("D://AIT580//MALLIPAMU-PAVAN-KUMAR-TEJA_AIT580//AIT580//data//Acme.csv")
print(data1)
#to find attributes
attributes(data1)
#to find datatypes of attibutes
typeof(data1$Years)
typeof(data1$StSalary)
typeof(data1$Gender)
typeof(data1$Degree)


#2.Produce a summary statistic for each attribute in the dataset
summary(data1)


#3. Produce visualizations for each attribute
hist(data1$Years,xlab="Years")
hist(data1$StSalary,xlab = 'Starting Salary')

#since Gender and Degree are not numeric we cannot draw histograms for these attributes


#4. Display the relationship between
#a. Years of Experience and Starting Salary for all employees 
plot(data1$Years,data1$StSalary,xlab = "Years of experience",ylab="starting salary")
lines(lowess(data1$Years,data1$StSalary),col= "blue")

#b. Years of Experience and Starting Salary for each gender

maledata1<- data1 %>% filter(Gender == "M")
femaledata1<- data1 %>% filter(Gender == "F")
maleYears<-maledata1$Years
maleSalary<-maledata1$StSalary
plot(maleYears,maleSalary,xlab="years of experience",ylab = "starting salary")
lines(lowess(maleYears,maleSalary),col= "blue")


femaleYears<- femaledata1$Years
femaleSalary<- femaledata1$StSalary
plot(femaleYears,femaleSalary,xlab="years of experience",ylab="starting salary")
lines(lowess(femaleYears,femaleSalary),col= "blue")


#c. Years of Experience and Starting Salary for each degree 
degree1<- data1 %>% filter(Degree == "BS")
degree2<- data1 %>% filter(Degree == "MS")
degree3<- data1 %>% filter(Degree == "PhD")

# for degree BS
degree1Years<-degree1$Years
degree1Salary<-degree1$StSalary
plot(degree1Years,degree1Salary,xlab="years of experience",ylab="starting salary")
lines(lowess(degree1Years,degree1Salary),col= "blue")


#for degree MS
degree2Years<-degree2$Years
degree2Salary<-degree2$StSalary
plot(degree2Years,degree2Salary,xlab = "years of experience",ylab="starting salary")
lines(lowess(degree2Years,degree2Salary),col= "blue")

# for degree PhD
degree3Years<-degree3$Years
degree3Salary<-degree3$StSalary
plot(degree3Years,degree3Salary,xlab = "years of experience",ylab = "starting salary")
lines(lowess(degree3Years,degree3Salary),col= "blue")

#5. Find the correlation between Starting Salary and Years of Experience? 
#corelation between starting salary and years of experience
cor1 <- cor.test(data1$StSalary, data1$Years, 
                method = "pearson")
cor1

#corelation for genders
#for male
cor2<-cor.test(maleSalary,maleYears,method = "pearson")
cor2

#for female
cor3<-cor.test(femaleSalary,femaleYears,method = "pearson")
cor3
 # it is different for males and females

#for degree1 BS
cor4<-cor.test(degree1Salary,degree1Years,method = "pearson")
cor4
#for degree2 MS
cor5<-cor.test(degree2Salary,degree2Years,method = "pearson")
cor5
#for degree3PhD
cor6<-cor.test(degree3Salary,degree3Years,method = "pearson")
cor6

#6. What can you conclude about Acme with respect to gender bias after your overall analysis?
#females with 1-6 years of experience earn less on average than males with the same years of experience and 
#educational degree.there is just one female employee with more than 6 years of experience ,making a comparision 
#between 7 and 10 years difficult.there are 14 males with more than 6 years of experience but only one female so it is 
#hard to draw conclusion.
