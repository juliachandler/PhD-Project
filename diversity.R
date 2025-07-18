#vignette("indicspeciesTutorial", package="indicspecies")
#vignette("diversity-vegan")
getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir)

#library(asbio)
library(vegan)
library(PMCMR)

df <- read.table("C:/R/data/veg.csv", header=T, sep=",")
names(df)

############### ALL SITES ####################################
x1 <- subset(df, yr==1, select = c(ABIEGRA:WOODORA))
x5 <- subset(df, yr==5, select = c(ABIEGRA:WOODORA))
x10 <- subset(df,yr==10, select = c(ABIEGRA:WOODORA))
x20 <- subset(df,yr==20, select = c(ABIEGRA:WOODORA))

s.x1 <- x1[, colSums(x1) != 0]
S.x1<-ncol(s.x1)
s.x5 <- x5[, colSums(x5) != 0]
S.x5<-ncol(s.x5)
s.x10 <- x10[, colSums(x10) != 0]
S.x10<-ncol(s.x10)
s.x20 <- x20[, colSums(x20) != 0]
S.x20<-ncol(s.x20)
x.diversity<-cbind(S.x1, S.x5, S.x10, S.x20)
results_allsites<-head(x.diversity)

############### ESSF #########################################
x1 <- subset(df, bec=="essf" & yr==1, select = c(ABIEGRA:WOODORA))
x5 <- subset(df, bec=="essf" & yr==5, select = c(ABIEGRA:WOODORA))
x10 <- subset(df, bec=="essf" & yr==10, select = c(ABIEGRA:WOODORA))
x20 <- subset(df, bec=="essf" & yr==20, select = c(ABIEGRA:WOODORA))

s.x1 <- x1[, colSums(x1) != 0]
S.x1<-ncol(s.x1)
s.x5 <- x5[, colSums(x5) != 0]
S.x5<-ncol(s.x5)
s.x10 <- x10[, colSums(x10) != 0]
S.x10<-ncol(s.x10)
s.x20 <- x20[, colSums(x20) != 0]
S.x20<-ncol(s.x20)
x.diversity<-cbind(S.x1, S.x5, S.x10, S.x20)
results_essf<-head(x.diversity)

############### ICH ##########################################
x1 <- subset(df, bec=="ich" & yr==1, select = c(ABIEGRA:WOODORA))
x5 <- subset(df, bec=="ich" & yr==5, select = c(ABIEGRA:WOODORA))
x10 <- subset(df, bec=="ich" & yr==10, select = c(ABIEGRA:WOODORA))
x20 <- subset(df, bec=="ich" & yr==20, select = c(ABIEGRA:WOODORA))

s.x1 <- x1[, colSums(x1) != 0]
S.x1<-ncol(s.x1)
s.x5 <- x5[, colSums(x5) != 0]
S.x5<-ncol(s.x5)
s.x10 <- x10[, colSums(x10) != 0]
S.x10<-ncol(s.x10)
s.x20 <- x20[, colSums(x20) != 0]
S.x20<-ncol(s.x20)
x.diversity<-cbind(S.x1, S.x5, S.x10, S.x20)
results_ich<-head(x.diversity)

############### SBS ##########################################
x1 <- subset(df, bec=="sbs" & yr==1, select = c(ABIEGRA:WOODORA))
x5 <- subset(df, bec=="sbs" & yr==5, select = c(ABIEGRA:WOODORA))
x10 <- subset(df, bec=="sbs" & yr==10, select = c(ABIEGRA:WOODORA))
x20 <- subset(df, bec=="sbs" & yr==20, select = c(ABIEGRA:WOODORA))

s.x1 <- x1[, colSums(x1) != 0]
S.x1<-ncol(s.x1)
s.x5 <- x5[, colSums(x5) != 0]
S.x5<-ncol(s.x5)
s.x10 <- x10[, colSums(x10) != 0]
S.x10<-ncol(s.x10)
s.x20 <- x20[, colSums(x20) != 0]
S.x20<-ncol(s.x20)
x.diversity<-cbind(S.x1, S.x5, S.x10, S.x20)
results_sbs<-head(x.diversity)

############## RESULTS #######################################
results_allsites
results_essf
results_ich
results_sbs

############### Friedman Test ################################
## Run for each set of all sites, essf, ich and sbs

diversity.run<-{
x1[x1 > 0] <- 1
x5[x5 > 0] <- 1
x10[x10 > 0] <- 1
x20[x20 > 0] <- 1
S.x1 <- specnumber(x1)
S.x5 <- specnumber(x5)
S.x10 <- specnumber(x10)
S.x20 <- specnumber(x20)
x.diversity<-cbind(S.x1, S.x5, S.x10, S.x20)
x.diversity
}

friedman.run<-{
  friedman.dat<-x.diversity
  friedman.test(friedman.dat)
}

posthoc.run<-{
  posthoc1.x<-posthoc.friedman.conover.test(friedman.dat)
  posthoc2.x<-posthoc.friedman.nemenyi.test(friedman.dat)
}

diversity.run
friedman.run
posthoc.run