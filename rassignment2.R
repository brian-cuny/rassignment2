toothData <- read.table(file='https://raw.githubusercontent.com/brian-cuny/rassignment2/master/ToothGrowth.csv', header=TRUE, sep=',', stringsAsFactors=FALSE)

#1
summary(toothData)
toothDataMean <- mean(toothData$len)
toothDataMedian <- median(toothData$len)
sprintf('The mean ginuea pig tooth length is: %s', toothDataMean)
sprintf('The median ginuea pig tooth length is: %s', toothDataMedian)


#2
betterToothData <- toothData[toothData$dose != 2,2:4]


#3
names(betterToothData) <- c('Tooth_Length', 'Supplement', 'Dose')

#4
summary(betterToothData)
betterToothDataMean <- mean(betterToothData$Tooth_Length)
betterToothDataMedian <- median(betterToothData$Tooth_Length)
sprintf('The mean ginuea pig tooth length is: %s', betterToothDataMean)
sprintf('The median ginuea pig tooth length is: %s', betterToothDataMedian)
sprintf('Original Mean: %s vs. Subset Mean: %s', toothDataMean, betterToothDataMean)
sprintf('Original Median: %s vs. Subset Median: %s', toothDataMedian, betterToothDataMedian)

#5
betterToothData$Supplement[betterToothData$Supplement == 'VC'] <- 'Vitamin C'
betterToothData$Supplement[betterToothData$Supplement == 'OJ'] <- 'Orange Juice'
head(betterToothData)
tail(betterToothData)