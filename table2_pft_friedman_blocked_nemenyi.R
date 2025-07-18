getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir)

require(muStat)
require (PMCMR)
vignette("PMCMR")

dat <- read.table("C:/R/data/PFTdata_8pft.csv", header=T, sep=",")
df<-dat[c(1,2, 9:17)]

df2<-df[which(df$bec=="essf"),]   #Change the zone

yr01a <- df2[which(df2$yr=="1"),]
yr05a <- df2[which(df2$yr=="5"),]
yr10a <- df2[which(df2$yr=="10"),]
yr20a <- df2[which(df2$yr=="20"),]

yr01 <- yr01a["pft1"]
yr05 <- yr05a["pft1"]
yr10 <- yr10a["pft1"]
yr20 <- yr20a["pft1"]

dat<-cbind(yr01, yr05, yr10, yr20)
ymat<-as.matrix(dat)
colnames(ymat, do.NULL = TRUE, prefix = "col")
colnames(ymat) <- c("yr01", "yr05", "yr10", "yr20")
bl<-yr01a[2]
gr <- factor(as.vector(col(ymat)))
print(friedman.test(ymat, gr, bl))
print(posthoc.friedman.nemenyi.test(ymat, gr, bl))


yr01 <- yr01a["pft2"]
yr05 <- yr05a["pft2"]
yr10 <- yr10a["pft2"]
yr20 <- yr20a["pft2"]

yr01 <- yr01a["pft3"]
yr05 <- yr05a["pft3"]
yr10 <- yr10a["pft3"]
yr20 <- yr20a["pft3"]

yr01 <- yr01a["pft4"]
yr05 <- yr05a["pft4"]
yr10 <- yr10a["pft4"]
yr20 <- yr20a["pft4"]

yr01 <- yr01a["pft5"]
yr05 <- yr05a["pft5"]
yr10 <- yr10a["pft5"]
yr20 <- yr20a["pft5"]

yr01 <- yr01a["pft6"]
yr05 <- yr05a["pft6"]
yr10 <- yr10a["pft6"]
yr20 <- yr20a["pft6"]

yr01 <- yr01a["pft7"]
yr05 <- yr05a["pft7"]
yr10 <- yr10a["pft7"]
yr20 <- yr20a["pft7"]

yr01 <- yr01a["pft8"]
yr05 <- yr05a["pft8"]
yr10 <- yr10a["pft8"]
yr20 <- yr20a["pft8"]
