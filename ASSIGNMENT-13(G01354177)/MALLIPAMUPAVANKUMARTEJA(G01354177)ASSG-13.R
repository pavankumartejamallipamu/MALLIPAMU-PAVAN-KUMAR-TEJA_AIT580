###------------------
###Regression and Clustering
###------------------

###Students Name:MALLIPAMU PAVAN KUMAR TEJA
###GNumber:G01354177  


rm(list=ls())



library(ggplot2)
library(dplyr)

data1 <- read.csv("D://AIT580//AIT580//data//EmployeeAttrition.csv")

#a. Show the scatter plot with relationship curve between TotalWorkingYears and
#MonthlyIncome. Briefly explain your observation in the plot
x=data1$YearsAtCompany
y=data1$MonthlyIncome

p1 <- ggplot(data1, aes(x, y)) + 
  geom_point(size = 3) + geom_smooth(method='lm') + 
  labs(x = "Years of experience", y = "Monthly Income")
p1
#from the plot we observe that monthly income varies depend on the years of experience and we can also observe from 
#the plot that more number of employess have less than 10 years of experience


#b. Show the scatter plot with relationship curve between Age and DistanceFromHome.
#Briefly explain your observation in the plot
x1=data1$Age
y1=data1$DistanceFromHome

p2 <- ggplot(data1, aes(x1, y1)) + 
  geom_point(size = 3) + geom_smooth(method='lm') + 
  labs(x = "Age", y = "Distance from home")

p2

#from the plot we observe that distance from home has nothing to do with the age variable 
#from this we can conclude that these two variables are dependent and are not related to each other

#c. Calculate Correlation for (a) and (b) and explain the values to support your answer in (a)and (b) 
res <- cor.test(x, y, 
                method = "pearson")
res
# here we observe that the p value is less than 0.05 so we reject null hypothesis and from the values we observe 
#that years of experience and monthly income are correlated with a value of 0.514
# here we observe that test static value t is 22.796
#df degrees of freedom is 1468


res1 <- cor.test(x1, y1, 
                method = "pearson")
res1

# here we observe that p value is greater than 0.05 so we accept null hypothesis 
#so the true correlation value is zero on a 95 percent confidence interval
#from the values we observe there is no correlation between age and distance from home

#d. Using Linear Regression, find details of the relationship between TotalWorkingYears and
#MonthlyIncome. Explain results in terms of p-value at 95% confidence interval and
#determine whether the relationship is significant or not (Hint: Use lm() to create linear
#regression model. Use print() to show coefficients. Use summary() to show more details) 

linear_model = lm(y~x, data = data1)
print(linear_model)
#here the coefficients are intercept=3733.3 and x =395.2

summary(linear_model)
# we observe that the p value 2e-16(at 95% confidence interval by default) is less than 0.05 this indicates
#that the relationship is more significant 
#from the adjusted r-squared we observe that 26 percent of variation is observed 
plot(linear_model)

#2 CLUSTERING
#a. Use K-means Clustering algorithm to find groups between HourlyRate and
#TotalWorkingYears. Use number of clusters as 3. Explain how each group is different
#from another in terms of employees representing those groups.

result <- data1 %>% select(YearsAtCompany, MonthlyIncome)
View(result)

clustering<-kmeans(result, 3)
clustering
clustering$cluster <- as.factor(clustering$cluster)
ggplot(result, aes(YearsAtCompany, MonthlyIncome, color = clustering$cluster)) + geom_point()
#from the plot we observe that there are 3 groups(clusters) in which 
#one group monthly income is less than 7500 whose years at company varies from 0 to 25 years
#another group varies from 7500 to 12500 whose years at company varies from 0 to 40 years
# remaining group varies from 12500 to 20000 whose years at company varies from 0 to 37 years

#b. Use number of clusters as 5. What did you observe? Did you see any split of groups
#observed in (a)? Observe the splitting groups and explain in terms of employees
#representing those groups
clustering2<-kmeans(result, 5)
clustering2

clustering2$cluster <- as.factor(clustering2$cluster)
ggplot(result, aes(YearsAtCompany, MonthlyIncome, color = clustering2$cluster)) + geom_point()

# yes we observe split of groups in a and also in b
# from plot b we observe that the there are 5 clusters
# first group monthly income is less than 4000 whose years at company varies from 0 to 20 years
#second group monthly income varies from 4000 to 7500 whose years at company varies from 0 to 25 years 
#third group monthly income varies from 7500 11000 whose years at company varies from 0 to 33 years
# fourth group monthly income varies from 11000 to 15500 whose years at company varies from 0 to 38 years
#fifth group monthly income varies from 15500 to 20000 whose years at company varies 0 to 37 years
#this plot is visible when zoom is clicked
