# ==========================================================================

# DATA SCIENCE SEMINAR, FALL 2016, WEEK 02

# ==========================================================================

# set your working directory
# examples:
# Mac OSX = setwd("/Users/jdoe/Desktop")
# Windows, Personal = setwd("C:/Users/jdoe/Desktop")
# Windows, SLU Labs = setwd("E:/Users/jdoe/Desktop")

setwd("~/Documents/SLU/R Group/Fall 2016")

# ==========================================================================

# file name - seminar-02.R

# project name - data science seminar, fall 2016

# purpose - week 02 examples, exploring plot and qplot

# created - 22 Sep 2016

# updated - 25 Sep 2016

# author - CHRISTY

# ==========================================================================

# full description - this file contains the code for...

# updates - none

# ==========================================================================
# ==========================================================================

# 1. import data from CSV file

# ==========================================================================

lang <- read.csv("seminar-02.csv") 
# import sample CSV data into dataframe -- as long as it is in the same 
# working directory (folder), all you need is the file name to open in
# RStudio


# ==========================================================================

# 2. exploring data

# ==========================================================================

str() # print list of all variables
print(head()) # print list of first six observations
print(tail()) # print list of last six observations

#we can and will use our own data, but for now let's use some that R provides
#car - Speed (mph) of cars and the distances (ft) taken to stop (1920s).

str(lang)
print(head(lang))
print(tail(lang))


# ==========================================================================

# 3. descriptive statistics

# ==========================================================================

#to single out a variable to test, we need to tell R which dataset & variable
#mean(dataset$variable)

mean(lang$speaking)
median(lang$speaking)
max(lang$speaking)
min(lang$speaking)
range(lang$speaking)
sd(lang$speaking)

summary() #summary of the properties of each variable in a dataset
#i.e. all of the tests we just did, for each variable in the dataset
summary(lang)


# ==========================================================================

# 4. basic plots

# ==========================================================================

#histograms can also be a good first glance at the data
#hist(dataset$variable) makes a histogram of a particular variable in a dataset
hist(lang$speaking)
hist(lang$listening)


#with this simple dataset, we can also make a basic plot to look at
#the relationship between two variables
#plot(dataset$variable1, dataset$variable2)
#if the variables are continuous, this makes a scatterplot and we can fit a correlation line
plot(lang$speaking, lang$listening)
fit=lm(lang$speaking~lang$listening)
abline(fit)

#if you input one variable and it is categorical, it makes a barplot 
plot(lang$mother)

#if you input one categorical and one continuous variables, it makes a boxplot
#you can also use the command boxplot() 
plot(lang$mother, lang$speaking)


#qplot functions in much the same way and is a good way to make quick plots that look a little nicer 
#requires ggplot2 package to be installed
#given one variable -> histogram/barplot
qplot(lang$father)
qplot(lang$speaking)
#change the binwidth
qplot(lang$speaking, binwidth=50)
qplot(lang$speaking, binwidth=100)

#given two continuous variables -> scatterplot
qplot(lang$speaking, lang$listening)


# ==========================================================================

# 5. now try these out with your data!

# ==========================================================================

datasetname <- read.csv("XXX.csv")

# ==========================================================================



