library(MASS)
data("Boston")
#HANDLE MISSING VALUES 
#THERE ARE VARIOUS WAY TO  HANDLE MISSING VALUES :
#1.DELETEING
#2.IMPUTATING MISSING VALUES WITH MEAN MODE MEDIAN
#3.KNN IMPUTATION
#4.SIMPLE LINEAR REGRESSION

#1.DELETEING OBSERVATIONS
#if data is very large in size and where all the classess predicted
#are very large enough those dataset with require deletion of missing
#values 

# Example
lm(medv ~ ptratio + rad, data=BostonHousing, na.action=na.omit)  # though na.omit is default in lm()

#2.Imputation of Mean,Mode And Median
#Replacing missing values with mean ,mode and median is a crude way of handling data 
#when variatiion between the dataset is not enough that is variation is very low
#in such cases where rough approximation of data can be considered are imputated with mean
#mode ,median

library(Hmisc)
impute(BostonHousing$ptratio, mean)  # replace with mean
impute(BostonHousing$ptratio, median)  # median
impute(BostonHousing$ptratio, 20)  # replace specific number
# or if you want to impute manually
BostonHousing$ptratio[is.na(BostonHousing$ptratio)] <- mean(BostonHousing$ptratio, na.rm = T)  # not run

#KNN Imputation(Prediction)

