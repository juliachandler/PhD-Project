getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

df <- read.table("C:/R/data/veg.csv", header=T, sep=",")

tiff(file = "C:/R/2016_1/out/indicator x yr.tiff", width = 2600, height = 4850, units = "px", res = 600, compression="lzw")
par(mfrow= c(3, 1))

############################ ESSF #################################

essf <- subset(df, bec=="essf", select = c("yr", "EPILANG", "GYMNDRY", "VALESIT", "VACCMEM", "STRELAN",
                                               "MENZFER", "ARNI_SP", "TIARTRI2", "VERAVIR"))

y1 <- tapply(essf$EPILANG, essf$yr, mean)
y2 <- tapply(essf$GYMNDRY, essf$yr, mean)
y3 <- tapply(essf$VALESIT, essf$yr, mean)
y4 <- tapply(essf$VACCMEM, essf$yr, mean)
y5 <- tapply(essf$STRELAN, essf$yr, mean)
y6 <- tapply(essf$MENZFER, essf$yr, mean)
y7 <- tapply(essf$ARNI_SP, essf$yr, mean)
y8 <- tapply(essf$TIARTRI2, essf$yr, mean)
y9 <- tapply(essf$VERAVIR, essf$yr, mean)
y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8, y9))
x <- c(1, 5, 10, 20)

par(mar=c(0,3.85,0,0)+0.5)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 50))
#axis(1)
axis(2)
#title(main="ESSF")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover", cex.lab = 1.25)
box()

points(x, y1, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y2, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=23, cex=1.25, col="black", bg="grey")
points(x, y4, type="b", lty=1, pch=21, cex=1.25, col="black", bg="black")
points(x, y5, type="b", lty=1, pch=22, cex=1.25, col="black", bg="black")
points(x, y6, type="b", lty=1, pch=23, cex=1.25, col="black", bg="black")
points(x, y7, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y9, type="b", lty=1, pch=23, cex=1.25, col="black", bg="white")

plotchar <- c(21,22,23,21,22,23,21,22,23)
linetype <- c(1, 1, 1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("grey", "grey", "grey", "black", "black", "black", "white", "white", "white")


legend(expression(italic("Epilobium angustifolium"),italic("Gymnocarpium dryopteris"),italic("Valeriana sitchensis"),
                         italic("Vaccinium membranaceum"),italic("Streptopus lanceolatus"),italic("Menziesia ferruginea"),
                         italic("Arnica spp"),italic("Tiarella trifoliata var. unifoliata"), italic("Veratrum viride")),
       x="topleft", y= null,
       cex=0.9, pch=plotchar, lty=linetype, col="black",pt.bg=ptbackground, pt.cex=1.25)

############################ ICH #################################

ich <- subset(df, bec=="ich", select = c("yr", "EPILANG", "GYMNDRY", "CORNCAN", "RUBUPAR",
                                        "EQUIARV", "SAMBRAC", "ATHYFIL", "PICEENE", "ALNUCRI"))

y1 <- tapply(ich$EPILANG, ich$yr, mean)
y2 <- tapply(ich$GYMNDRY, ich$yr, mean)
y3 <- tapply(ich$CORNCAN, ich$yr, mean)
y4 <- tapply(ich$RUBUPAR, ich$yr, mean)
y5 <- tapply(ich$EQUIARV, ich$yr, mean)
y6 <- tapply(ich$SAMBRAC, ich$yr, mean)
y7 <- tapply(ich$ATHYFIL, ich$yr, mean)
y8 <- tapply(ich$PICEENE, ich$yr, mean)
y9 <- tapply(ich$ALNUCRI, ich$yr, mean)
y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8, y9))
x <- c(1, 5, 10, 20)

par(mar=c(0,3.85,0,0)+0.5)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 50))
#axis(1)
axis(2)
#title(main="ICH")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover", cex.lab = 1.25)
box()

points(x, y1, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y2, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=23, cex=1.25, col="black", bg="grey")
points(x, y4, type="b", lty=1, pch=21, cex=1.25, col="black", bg="black")
points(x, y5, type="b", lty=1, pch=22, cex=1.25, col="black", bg="black")
points(x, y6, type="b", lty=1, pch=23, cex=1.25, col="black", bg="black")
points(x, y7, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y9, type="b", lty=1, pch=23, cex=1.25, col="black", bg="white")

plotchar <- c(21,22,23,21,22,23,21,22,23)
linetype <- c(1, 1, 1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("grey", "grey", "grey", "black", "black", "black", "white", "white", "white")

legend(expression(italic("Epilobium angustifolium"),
                  italic("Gymnocarpium dryopteris"),italic("Cornus canadensis"),
                         italic("Rubus parviflorus"),italic("Equisetum arvense"),
                         italic("Sambucus racemosa"),italic("Athyrium filix-femina"),
                         italic("Picea engelmannii x glauca"),italic("Alnus crispa")),
                  x="topleft", y= null, cex=0.9, pch=plotchar, lty=linetype, col="black",pt.bg=ptbackground, pt.cex=1.25)

############################ SBS #################################

sbs <- subset(df, bec=="sbs", select = c("yr", "EPILANG", "SPIRBET",
                                         "CORNCAN","RUBUPAR","CARE_SP", "ARNI_SP",
                                         "GERABIC","PICEENE", "PINUCON", "LINNBOR", "RUBUIDA"))
y1 <- tapply(sbs$EPILANG, sbs$yr, mean)
y2 <- tapply(sbs$SPIRBET, sbs$yr, mean)
y3 <- tapply(sbs$CORNCAN, sbs$yr, mean)
y4 <- tapply(sbs$RUBUPAR, sbs$yr, mean)
y5 <- tapply(sbs$CARE_SP, sbs$yr, mean)
y6 <- tapply(sbs$ARNI_SP, sbs$yr, mean)
y7 <- tapply(sbs$GERABIC, sbs$yr, mean)
y8 <- tapply(sbs$PICEENE, sbs$yr, mean)
y9 <- tapply(sbs$PINUCON, sbs$yr, mean)
y10 <- tapply(sbs$LINNBOR, sbs$yr, mean)
y11 <- tapply(sbs$RUBUIDA, sbs$yr, mean)
y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11))
x <- c(1, 5, 10, 20)

par(mar=c(3.85,3.85,0,0)+0.5)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 50))
axis(1)
axis(2)
#title(main="SBS")
title(xlab="Time Since Burn (Years)", cex.lab = 1.25)
title(ylab="Mean % Cover", cex.lab = 1.25)
box()

points(x, y1, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y2, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=23, cex=1.25, col="black", bg="grey")
points(x, y4, type="b", lty=1, pch=21, cex=1.25, col="black", bg="black")
points(x, y5, type="b", lty=1, pch=22, cex=1.25, col="black", bg="black")
points(x, y6, type="b", lty=1, pch=23, cex=1.25, col="black", bg="black")
points(x, y7, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y9, type="b", lty=1, pch=23, cex=1.25, col="black", bg="white")
points(x, y10, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y11, type="b", lty=1, pch=24, cex=1.25, col="black", bg="black")

plotchar <- c(21,22,23,21,22,23,21,22,23,24,24)
linetype <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("grey", "grey", "grey", "black", "black", "black", "white", "white", "white","white", "black")

legend(expression(italic("Epilobium angustifolium"),italic("Spiraea betulifolia"),italic("Cornus canadensis"),
                  italic("Rubus parviflorus"),italic("Carex spp"), 
                  italic("Arnica spp"),italic("Geranium bicknellii"),
                  italic("Picea engelmannii x glauca"),italic("Pinus contorta"),
                  italic("Linnaea borealis"),italic("Rubus idaeus")),
       x="topleft", y= null, cex=0.9, pch=plotchar, lty=linetype, col="black",pt.bg=ptbackground, pt.cex=1.25)
dev.off()
############################################################## END ################