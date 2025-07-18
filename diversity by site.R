df <- read.table("C:/R/data/veg.csv", header=T, sep=",")
names(df)

############### ALL 10 SITES ####################################

df <- read.table("C:/R/data/veg.csv", header=T, sep=",")
x <- subset(df, yr==20, select = c(site, ABIEGRA:WOODORA))
#x <- subset(df, select = c(site, ABIEGRA:WOODORA))
x2<-aggregate(. ~ site,data=x,sum)
x3 <-x2[2:145]
x3[x3 > 0] <- 1
x3 <- rowSums(x3)
x3