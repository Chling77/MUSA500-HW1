'
MUSA500 Statistical Data Mining Method
Homework 1
Hang Zhao
Ling Chen
Jiahang Li
'
# Question 1
# 1a. i. 
# import the data
data <- read.csv("/Users/hangzhao/Documents/R/RegressionData.csv")

# plot all the histograms
hist(data$MEDHVAL)
hist(data$NBELPOV100)
hist(data$PCTBACHMOR)
hist(data$PCTVACANT)
hist(data$PCTSINGLES)

# print out all the means
mean(data$MEDHVAL)
mean(data$NBELPOV100)
mean(data$PCTBACHMOR)
mean(data$PCTVACANT)
mean(data$PCTSINGLES)

# print out all the standard deviations
sd(data$MEDHVAL)
sd(data$NBELPOV100)
sd(data$PCTBACHMOR)
sd(data$PCTVACANT)
sd(data$PCTSINGLES)

#1a. ii.
# create and name new log variables
LNMEDHVAL <- log(data$MEDHVAL)
LNNBELPOV100 <- log(data$NBELPOV100)
LNPCTBACHMOR <- log(data$PCTBACHMOR)
LNPCTVACANT <- log(data$PCTVACANT)
LNPCTSINGLES <- log(data$PCTSINGLES)

# plot all the histograms for new log variables
hist(LNMEDHVAL)
hist(LNNBELPOV100)
hist(LNPCTBACHMOR)
hist(LNPCTVACANT)
hist(LNPCTSINGLES)

# 1b. 
# create four scatter plots

# create a plotting window with 2*2 array
par(mfrow=c(2,2))
plot(data$NBELPOV100, data$MEDHVAL)
plot(data$PCTBACHMOR, data$MEDHVAL)
plot(data$PCTVACANT, data$MEDHVAL)
plot(data$PCTSINGLES, data$MEDHVAL)

# correlations between the variables
# cor(data$PCTBACHMOR, data$NBELPOV100)
# cor(data$PCTVACANT, data$NBELPOV100)
# cor(data$PCTSINGLES, data$NBELPOV100)
# cor(data$PCTBACHMOR, data$PCTSINGLES)
# cor(data$PCTVACANT, data$PCTBACHMOR)
# cor(data$PCTSINGLES, data$PCTVACANT)
cor(data, method=c("pearson"))

# install the required rgdal package for geospatial analysis
install.packages("rgdal")

# import the library
library(rgdal)

# read the shape file
setwd("/Users/hangzhao/Documents/R")
phillydata <- readOGR("Lecture 1 - RegressionData.shp/RegressionData.shp")

# plot the choropleth graph
spplot(phillydata, "LNMEDHVAL")
