getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

### The values are from Table 2

################################# ESSF ##########################################

tiff(file = "C:/R/2016_1/out/pie_ESSF_01.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(25,1,2,5) 
lbls <- c("PFT2 -","PFT3 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey50","black","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the ESSF (Year 1)")

dev.off()

tiff(file = "C:/R/2016_1/out/pie_ESSF_20.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(13,60,9,2,1,17,37)
lbls <- c("PFT1 -","PFT2 -","PFT3 -","PFT4 -","PFT6 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey90","grey50","black","grey30","white","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the ESSF (Year 20)")

dev.off()

################################# ICH ##########################################

tiff(file = "C:/R/2016_1/out/pie_ICH_01.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(31,2,3,1) 
lbls <- c("PFT2 -","PFT3 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey50","black","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the ICH (Year 1)")

dev.off()

tiff(file = "C:/R/2016_1/out/pie_ICH_20.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(35,74,5,11,28,6) 
lbls <- c("PFT1 -","PFT2 -","PFT3 -","PFT4 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey90","grey50","black","grey30","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the ICH (Year 20)")

dev.off()

################################# SBS ##########################################

tiff(file = "C:/R/2016_1/out/pie_SBS_01.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(25,16,2,1) 
lbls <- c("PFT2 -","PFT3 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey50","black","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the SBS (Year 1)")

dev.off()

tiff(file = "C:/R/2016_1/out/pie_SBS_20.tiff", width=6, height=6, units="in", res=400)
par(mar=c(0.5,1.5,0.5,1.5)+0.5)
slices <- c(42,64,12,24,2,25,5) 
lbls <- c("PFT1 -","PFT2 -","PFT3 -","PFT4 -","PFT6 -","PFT7 -","PFT8 -")
pct <- round(slices/sum(slices)*100)
cols <- c("grey90","grey50","black","grey30","white","grey70","grey30")
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=cols, cex=0.8, main="Plant Functional Types in the SBS (Year 20)")

dev.off()

############################################################################ END