---
title: "Local Data For better Health"
permalink: /
layout: default
---

# Local Data For Better Health

## Team Members
* *Mallipamu Pavan kumar teja- G01354177*

## Brief Introduction 
* In this project we aimed to represent the data in visualization of the health data from 500 cities in the US. We tried to analyse the most common public health problem in US to inform the public, medical practitioners as well as policy makers and cities where most population lack health insurance.

## Nature of the Data Curation
This dataset contains model-based county-level estimates for the PLACES 2021 release. PLACES is the expansion of the original 500 Cities Project and covers the entire United States—50 states and the District of Columbia (DC)—at county, place, census tract, and ZIP Code Tabulation Area (ZCTA) levels. It represents a first-of-its kind effort to release information uniformly on this large scale for local areas at 4 geographic levels. Estimates were provided by the Centers for Disease Control and Prevention (CDC), Division of Population Health, Epidemiology and Surveillance Branch. PLACES was funded by the Robert Wood Johnson Foundation (RWJF) in conjunction with the CDC Foundation. The dataset includes estimates for 29 measures: 4 chronic disease-related health risk behaviors, 13 health outcomes, 3 health status, and 9 on using preventive services.
The following are the purpose of the data collection
1. Provide high-quality estimates on risk factors that influence health status and outcomes and use of preventative health services.
2. Inform the development and implementation of effective and targeted health interventions in America’s cities.
### Data Quality
* Data was not ready yet. This dataset is a survey various participants across the country whose responses must all be ‘yes’ or 'No to every preventative measure the CDC outlines in its guidelines in order to be counted in the survey.Some states such as California and Texas have way more participating locations than other states such as Alaska or North Dakota. Metadata was not explained properly on website. Dataset doesn't have any privacy issues.

## Questions
Given that the our project attempt to understand the most demanding health problem so as to better inform the public, medical practitioners as well as policy makers. We want to answer the following questions
* what is the distribution of data of year ?
* What is the distribution of Category in 2018 and 2019?
* What is the distribution of Data_value of Health outcomes,Risk behaviours,Prevention, Health Status?
* Correlation Matrix of Dataset
* Which Health outcome is most common ?
* Which cities are having the Most data Value for most demanding Health outcome?
* Which cities has less number of health insurances ?

## Requirements and Resources needed
* software tools used are Jupyter Notebook,jekyll.
* Dataset has limited number of columns, dataset mainly focuses on the response of population for different measures in different cities, but the data for the individual measure were given in the string in nested object.
* Due to we had to do plenty of data cleaning in order to access the data of individual measure.

## Descriptive Analysis
* Dataset has 187655 entries and 21 columns which gives us the information about the various variable. 
* We have an empty columns Data_Value_Footnote_Symbol and Data_Value_Footnote, also we do not need Datasource column. So we are dropping these 3 columns from dataframe.
* Data Value: Number of people answered yes for measure/(total number of people participated)
* Location Name: Name of the city
* Measure: Measure take for the survey
![image](https://user-images.githubusercontent.com/67438038/167252026-00c6bf45-39a6-4fda-80f1-db70f9168f11.png)
![image](https://user-images.githubusercontent.com/67438038/167252036-f047b6cd-e5c0-4901-89c7-755a4a328925.png)

## Result and Findings

### what is the distribution of data of year ?
![image](https://user-images.githubusercontent.com/67438038/167265175-7b9aa67f-2cba-481f-8ee6-a862795868b9.png)
* From above graph we can see that the data has been distributed between 2018 and 2019.

### What is the distribution of Category in 2018 and 2019?
![image](https://user-images.githubusercontent.com/67438038/167265181-aae5824a-6a17-4ff9-94ab-c69caf8a99a7.png)
* From above graph in 2018 we can see that the data has been distributes among categories 
  - Health outcomes
  - Prevention
  - Health Risk behaviours 
* From above graph in 2019 we can see that the data has been distribute among categories
  - Health outcomes
  - Prevention
  - Health Risk behaviours
  - Health Status

### What is the distribution of Data_value of Health outcomes,Risk behaviours,Prevention, Health Status?
![image](https://user-images.githubusercontent.com/67438038/167265203-3399b6bf-e0bb-4372-a430-ace8f3a741dd.png)

### Relation between Data value and location ID ? 
![image](https://user-images.githubusercontent.com/67438038/167265292-752f6f7e-f22a-4bd2-a7ed-822f86591ff7.png)
* It can be observed that Data value rate has a weak negative correlation with Location ID.

### what is the most common health outcome ?
![image](https://user-images.githubusercontent.com/67438038/167265284-914c2792-c51a-449f-86e0-3b54ab3b560b.png)
* From above graph we can notice that measure 'Cancer (excluding skin cancer) among adults aged >=18 years' is the most common health outcome.

### Which Cities has Highest Data value for most common health outcome?
![image](https://user-images.githubusercontent.com/67438038/167265261-5a4e5d0b-8703-4e12-a60d-5afc7df8f468.png)
* Above graph shows that Sumter city has highest Data Value follwed by Charlotte, Keweensaw.
* This finding can be used by the medical team to start new cancer treatment facilities in these cities.

### Which cities has less number of health insurances ?
![image](https://user-images.githubusercontent.com/67438038/167265256-63a6522f-93ef-43ff-9fb4-53afb8537783.png)
* Kenedy city population lack the health insurance who aged greater than 18.
* This can be used by the insurance organizations for to do their marketing and let them know the importance of the health insurance.

### what is the relation between mental health and physical health?
![image](https://user-images.githubusercontent.com/67438038/167265685-8b166315-4ae4-4864-a2f9-247367b43594.png)
* we can see that the mentalhealth value and physical health value have same impact on each other.
* Low mentalhealth value has low physical health value, same with high mental health value has high physical health value.

## Limitations
* Some states such as California and Texas have way more participating locations than other states such as Alaska or North Dakota, this put the serious limitation on answering the question which cities has less number insurance aged above 18 years.
* Cnacer measure is based on being diagnosed by a physician and respondent recall of the diagnosis and might underestimate the true prevalence.

## References
* https://www.researchgate.net/publication/317584962_500_Cities_Project_Local_Data_for_Better_Health
* https://chronicdata.cdc.gov/500-Cities-Places/PLACES-Local-Data-for-Better-Health-County-Data-20/swc5-untb
* https://pandas.pydata.org/
* https://seaborn.pydata.org/
* https://matplotlib.org/
