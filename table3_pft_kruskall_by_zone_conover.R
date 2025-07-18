getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir)

#require(muStat)
require (PMCMR)
require (stats)

vignette("PMCMR")

dat <- read.table("C:/R/data/PFTdata_8pft.csv", header=T, sep=",")
df2<-dat[c(1,2, 9:17)]
df <- df2[which(df2$yr=="20"),]  #change year

for(pft in df[4:11])
{
print(kruskal.test(pft~bec, site, data=df))
print(posthoc.kruskal.conover.test(x=pft, g=df$bec, blocks=df$site, p.adjust.method="bonferroni"))
}

##### summary stats #################

df <- aggregate(.~site + yr, data=df, FUN=mean)

essf <- subset(df, bec=="1")
ich <- subset(df, bec=="2")
sbs <- subset(df, bec=="3")

essf<-essf[4:11]
ich<-ich[4:11]
sbs<-sbs[4:11]

x<- as.matrix(essf)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
essfstats <- cbind(mn,sd,se)

x<- as.matrix(ich)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
ichstats <- cbind(mn,sd,se)

x<- as.matrix(sbs)
se<-function(x) {
  sd(x)/sqrt(length(x))
}
sd<-apply(x,2,sd)
se<-apply(x,2,se)
mn<-apply(x,2,mean)
sbsstats <- cbind(mn,sd,se)

pft_bec_stats<- cbind(essfstats,ichstats,sbsstats)
write.csv(pft_bec_stats, "C:/R/2016_1/out/stats_pft x bec_yr20.csv") #change year according to 

####################################### END #################