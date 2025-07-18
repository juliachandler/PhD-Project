getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

library(vegan)
library(colorspace)
library(pvclust)

spptraits <- read.csv("C:/R/data/spp_traits.csv", header=T, sep=",")
names(spptraits)
traits <- spptraits[,11:31]
spp_labels <- spptraits[,1] #change the 1 to a 2 for the species names

traits.dist = vegdist(traits, method = "bray")
traits.hclust = hclust(traits.dist, method = "ward.D2")

groups.8 = cutree(traits.hclust,8)
table(groups.8)
PFT<-sapply(unique(groups.8),function(g)spptraits$code[groups.8 == g])##call species by cluster
PFT

plot(traits.hclust,labels=spp_labels, main='Bray-Curtis Distance with Ward.D2 Clustering Method', hang = -0.1, cex=0.35)
rect.hclust(traits.hclust, 8) ##Draw rectangles around each cluster

groups.7 = cutree(traits.hclust,8)
table(groups.8)
##########################################################################

cluster<-print(groups.8) # add this column to traits table
spp_cluster<-data.frame(cluster,spptraits)
write.csv(spp_cluster, "C:/R/2016_1/out/PFTclusters.csv", row.names=FALSE)

########################################## Find mean trait value for each cluster

clustermeans<-aggregate(spp_cluster[, 12:39], list(spp_cluster$cluster), mean)
write.csv(clustermeans, "C:/R/2016_1/out/PFTclustermeans.csv")

#PFT<-sapply(unique(groups.8),function(g)spptraits$code[groups.8 == g])##call species by cluster
#PFT[1]#call individual group

########################################## 

# Ward Hierarchical Clustering with Bootstrapped p values

traits <- read.csv("C:/R/data/spp_traits.csv", header=T, sep=",")
mydata<-t(traits)
fit <- pvclust(mydata, method.hclust="ward.D2",
               method.dist="binary")
plot(fit,labels=spp_labels,cex.pv=0.6, cex=0.6) # dendogram with p values
# add rectangles around groups highly supported by the data
pvrect(fit, alpha=.90)
