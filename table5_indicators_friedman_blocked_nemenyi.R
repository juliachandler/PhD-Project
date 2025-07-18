#vignette("indicspeciesTutorial", package="indicspecies")
vignette("PMCMR")
getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir)

library(PMCMR)

df <- read.table("C:/R/data/veg.csv", header=T, sep=",")

########## Friedman test for Indicator Species ##################################################

########## ESSF ######################

essf1 <- subset(df, bec=="essf" & yr==1, select = c("VACCMEM","VALESIT","STRELAN","TIARTRI2","MENZFER",
                                                    "MITEBRE","ARNI_SP","GYMNDRY","VERAVIR","RHODALB",
                                                    "VIOL_SP","VACCOVA","LUZUPAR","HIERALB","CLINUNI",
                                                    "ANAPMAR","SENETRI"))
essf5 <- subset(df, bec=="essf" & yr==5, select = c("VACCMEM","VALESIT","STRELAN","TIARTRI2","MENZFER",
                                                    "MITEBRE","ARNI_SP","GYMNDRY","VERAVIR","RHODALB",
                                                    "VIOL_SP","VACCOVA","LUZUPAR","HIERALB","CLINUNI",
                                                    "ANAPMAR","SENETRI"))
essf10 <- subset(df, bec=="essf" & yr==10, select = c("VACCMEM","VALESIT","STRELAN","TIARTRI2","MENZFER",
                                                      "MITEBRE","ARNI_SP","GYMNDRY","VERAVIR","RHODALB",
                                                      "VIOL_SP","VACCOVA","LUZUPAR","HIERALB","CLINUNI",
                                                      "ANAPMAR","SENETRI"))
essf20 <- subset(df, bec=="essf" & yr==20, select = c("VACCMEM","VALESIT","STRELAN","TIARTRI2","MENZFER",
                                                      "MITEBRE","ARNI_SP","GYMNDRY","VERAVIR","RHODALB",
                                                      "VIOL_SP","VACCOVA","LUZUPAR","HIERALB","CLINUNI",
                                                      "ANAPMAR","SENETRI"))

bl <- subset(df, bec=="essf" & yr==1, select = "site")

run.essf<-function(x) {
  friedman.essf1<-essf1[[x]]
  friedman.essf5<-essf5[[x]]
  friedman.essf10<-essf10[[x]]
  friedman.essf20<-essf20[[x]]
  essf.ind1<-cbind(friedman.essf1, friedman.essf5, friedman.essf10, friedman.essf20)
  names(essf.ind1)<-cbind("ind1.1","ind1.5","ind1.10","ind1.20")
  ymat<-as.matrix(essf.ind1)
  gr <- factor(as.vector(col(ymat)))
  test<-friedman.test(essf.ind1, gr, bl)
  posthoc1<-posthoc.friedman.nemenyi.test(ymat, gr, bl)
  posthoc1
  print(test)
  return(posthoc1)
}

##### call function with first column "VACCMEM"
run.essf(1)

########## ICH ######################

ich1 <- subset(df, bec=="ich" & yr==1, select = c("SAMBRAC","EPILANG","RIBELAX","TIARTRI1","EQUIARV",
                                                  "RUBUPAR","EPILCIL","OPLOHOR","GYMNDRY","ATHYFIL",
                                                  "DRYOEXP","GALITRF","PICEENE","STRELAN"))
ich5 <- subset(df, bec=="ich" & yr==5, select = c("SAMBRAC","EPILANG","RIBELAX","TIARTRI1","EQUIARV",
                                                  "RUBUPAR","EPILCIL","OPLOHOR","GYMNDRY","ATHYFIL",
                                                  "DRYOEXP","GALITRF","PICEENE","STRELAN"))
ich10 <- subset(df, bec=="ich" & yr==10, select = c("SAMBRAC","EPILANG","RIBELAX","TIARTRI1","EQUIARV",
                                                    "RUBUPAR","EPILCIL","OPLOHOR","GYMNDRY","ATHYFIL",
                                                    "DRYOEXP","GALITRF","PICEENE","STRELAN"))
ich20 <- subset(df, bec=="ich" & yr==20, select = c("SAMBRAC","EPILANG","RIBELAX","TIARTRI1","EQUIARV",
                                                    "RUBUPAR","EPILCIL","OPLOHOR","GYMNDRY","ATHYFIL",
                                                    "DRYOEXP","GALITRF","PICEENE","STRELAN"))

bl <- subset(df, bec=="ich" & yr==1, select = "site")

run.ich<-function(x) {
  friedman.ich1<-ich1[[x]]
  friedman.ich5<-ich5[[x]]
  friedman.ich10<-ich10[[x]]
  friedman.ich20<-ich20[[x]]
  ich.ind1<-cbind(friedman.ich1, friedman.ich5, friedman.ich10, friedman.ich20)
  names(ich.ind1)<-cbind("ind1.1","ind1.5","ind1.10","ind1.20")
  ymat<-as.matrix(ich.ind1)
  gr <- factor(as.vector(col(ymat)))
  test<-friedman.test(ich.ind1, gr, bl)
  posthoc1<-posthoc.friedman.nemenyi.test(ymat, gr, bl)
  posthoc1
  print(test)
  return(posthoc1)
}

##### call function with first column "SAMBRAC"
run.ich(1)

########## SBS ######################

sbs1 <- subset(df, bec=="sbs" & yr==1, select = c("GERABIC","CORNCAN","PINUCON","SPIRBET","RUBUIDA",
                                                  "CARE_SP","CORYSEM","RIBEGLA","TARAOFF","PAXIMYR",
                                                  "BETUPAP","LINNBOR","HIERSCO","ROSAACI","POPUTRE"))
sbs5 <- subset(df, bec=="sbs" & yr==5, select = c("GERABIC","CORNCAN","PINUCON","SPIRBET","RUBUIDA",
                                                  "CARE_SP","CORYSEM","RIBEGLA","TARAOFF","PAXIMYR",
                                                  "BETUPAP","LINNBOR","HIERSCO","ROSAACI","POPUTRE"))
sbs10 <- subset(df, bec=="sbs" & yr==10, select = c("GERABIC","CORNCAN","PINUCON","SPIRBET","RUBUIDA",
                                                    "CARE_SP","CORYSEM","RIBEGLA","TARAOFF","PAXIMYR",
                                                    "BETUPAP","LINNBOR","HIERSCO","ROSAACI","POPUTRE"))
sbs20 <- subset(df, bec=="sbs" & yr==20, select = c("GERABIC","CORNCAN","PINUCON","SPIRBET","RUBUIDA",
                                                    "CARE_SP","CORYSEM","RIBEGLA","TARAOFF","PAXIMYR",
                                                    "BETUPAP","LINNBOR","HIERSCO","ROSAACI","POPUTRE"))

bl <- subset(df, bec=="sbs" & yr==1, select = "site")

run.sbs<-function(x) {
  friedman.sbs1<-sbs1[[x]]
  friedman.sbs5<-sbs5[[x]]
  friedman.sbs10<-sbs10[[x]]
  friedman.sbs20<-sbs20[[x]]
  sbs.ind1<-cbind(friedman.sbs1, friedman.sbs5, friedman.sbs10, friedman.sbs20)
  names(sbs.ind1)<-cbind("ind1.1","ind1.5","ind1.10","ind1.20")
  ymat<-as.matrix(sbs.ind1)
  gr <- factor(as.vector(col(ymat)))
  test<-friedman.test(sbs.ind1, gr, bl)
  posthoc1<-posthoc.friedman.nemenyi.test(ymat, gr, bl)
  posthoc1
  print(test)
  return(posthoc1)
}

##### call function with first column "GERABIC"
run.sbs(1)

##### summary stats ################################################

##### ESSF ##########################
x<- as.matrix(essf1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats1<- cbind(mn,sd,se)


x<- as.matrix(essf5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats5<- cbind(mn,sd,se)


x<- as.matrix(essf10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats10<- cbind(mn,sd,se)


x<- as.matrix(essf20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats20<- cbind(mn,sd,se)

essfstats<- cbind(essfstats1,essfstats5,essfstats10,essfstats20)
write.csv(essfstats, "C:/R/2016_1/out/stats_indicators_essf.csv")

##### ICH  ##########################
x<- as.matrix(ich1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats1<- cbind(mn,sd,se)


x<- as.matrix(ich5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats5<- cbind(mn,sd,se)


x<- as.matrix(ich10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats10<- cbind(mn,sd,se)


x<- as.matrix(ich20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats20<- cbind(mn,sd,se)

ichstats<- cbind(ichstats1,ichstats5,ichstats10,ichstats20)
write.csv(ichstats, "C:/R/2016_1/out/stats_indicators_ich.csv")

##### SBS  ##########################
x<- as.matrix(sbs1)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats1<- cbind(mn,sd,se)


x<- as.matrix(sbs5)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats5<- cbind(mn,sd,se)


x<- as.matrix(sbs10)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats10<- cbind(mn,sd,se)


x<- as.matrix(sbs20)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats20<- cbind(mn,sd,se)

sbsstats<- cbind(sbsstats1,sbsstats5,sbsstats10,sbsstats20)
write.csv(sbsstats, "C:/R/2016_1/out/stats_indicators_sbs.csv")
############################# END ###################################