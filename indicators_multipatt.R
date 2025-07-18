#vignette("indicspeciesTutorial", package="indicspecies")
getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

library(indicspecies)

df <- read.csv("C:/R/data/veg.csv", header=T, na.strings=" ")
names(df)
df[is.na(df)] <- 0
names(df) <- abbreviate(names(df), minlength=7)

indicsp <- function(x)
{
  yr <- subset(df, yr==x)
  spp <- subset(yr, select = c(ABIEGRA:WOODORA))
  groups <- yr[ , "bec"]
  veg <-spp[, colSums(spp != 0) > 0]
  bcc = multipatt(veg, groups, func = "IndVal.g", duleg = TRUE, control = how(nperm=999))
    summary(bcc)
    summary(bcc, indvalcomp=TRUE)
    sign<-bcc$sign
  list(result=sign)
}

indicsp(20) #change year
multipatt<-indicsp(20)$result #change year
multipatt2<-multipatt[order(multipatt[,4],-multipatt[,5],multipatt[,6]),] 
write.csv(multipatt2,"C:/R/2016_1/out/multipatt_yr20.csv") #change year
