getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

############## DATA ##############################################

dat <- read.table("C:/R/data/PFTdata_8pft.csv", header=T, sep=",")
df1<-dat[c(1,2, 9:17)]
df <- aggregate(.~site + yr, data=df1, FUN=mean)

########## Summary Stats##########################################

########## ESSF ######################

x1 <- subset(df, bec=="1" & yr==1, select = c(pft1:pft8))
x5 <- subset(df, bec=="1" & yr==5, select = c(pft1:pft8))
x10 <- subset(df, bec=="1" & yr==10, select = c(pft1:pft8))
x20 <- subset(df, bec=="1" & yr==20, select = c(pft1:pft8))

x<- as.matrix(x1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats1 <- cbind(mn,sd,se)

x<- as.matrix(x5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats5 <- cbind(mn,sd,se)

x<- as.matrix(x10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats10 <- cbind(mn,sd,se)

x<- as.matrix(x20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats20 <- cbind(mn,sd,se)

essfstats<- cbind(essfstats1,essfstats5,essfstats10,essfstats20)
write.csv(essfstats, "C:/R/2016_1/out/stats_pft x yr_essf.csv")

########## ICH #######################

x1 <- subset(df, bec=="2" & yr==1, select = c(pft1:pft8))
x5 <- subset(df, bec=="2" & yr==5, select = c(pft1:pft8))
x10 <- subset(df, bec=="2" & yr==10, select = c(pft1:pft8))
x20 <- subset(df, bec=="2" & yr==20, select = c(pft1:pft8))

x<- as.matrix(x1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats1 <- cbind(mn,sd,se)

x<- as.matrix(x5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats5 <- cbind(mn,sd,se)

x<- as.matrix(x10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats10 <- cbind(mn,sd,se)

x<- as.matrix(x20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats20 <- cbind(mn,sd,se)

ichstats<- cbind(ichstats1,ichstats5,ichstats10,ichstats20)
write.csv(ichstats, "C:/R/2016_1/out/stats_pft x yr_ich.csv")

########## SBS #######################

x1 <- subset(df, bec=="3" & yr==1, select = c(pft1:pft8))
x5 <- subset(df, bec=="3" & yr==5, select = c(pft1:pft8))
x10 <- subset(df, bec=="3" & yr==10, select = c(pft1:pft8))
x20 <- subset(df, bec=="3" & yr==20, select = c(pft1:pft8))

x<- as.matrix(x1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats1 <- cbind(mn,sd,se)

x<- as.matrix(x5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats5 <- cbind(mn,sd,se)

x<- as.matrix(x10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats10 <- cbind(mn,sd,se)

x<- as.matrix(x20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats20 <- cbind(mn,sd,se)

sbsstats<- cbind(sbsstats1,sbsstats5,sbsstats10,sbsstats20)
write.csv(sbsstats, "C:/R/2016_1/out/stats_pft x yr_sbs.csv")

########################################### END ##########