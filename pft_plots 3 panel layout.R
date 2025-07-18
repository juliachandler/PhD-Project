getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

df <- read.table("C:/R/data/PFTdata_8pft.csv", header=T, sep=",")
df_means<-aggregate(.~site+yr, data=df, FUN=mean) 

############################ ESSF #################################

#png(file='PFT over time.png')

tiff(file = "C:/R/2016_1/out/pft x yr.tiff", width = 2400, height = 5000, units = "px", res = 600, compression="lzw")
par(mfrow= c(3, 1))

essf <- subset(df_means, bec=="1", select = c(10:17, yr))

y1 <- tapply(essf$pft1, essf$yr, mean)
y2 <- tapply(essf$pft2, essf$yr, mean)
y3 <- tapply(essf$pft3, essf$yr, mean)
y4 <- tapply(essf$pft4, essf$yr, mean)
y5 <- tapply(essf$pft5, essf$yr, mean)
y6 <- tapply(essf$pft6, essf$yr, mean)
y7 <- tapply(essf$pft7, essf$yr, mean)
y8 <- tapply(essf$pft8, essf$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

#tiff(file = "C:/R/2016_1/out/pft x yr_essf.tiff", 
#     width = 4650, height = 3000, units = "px", res = 600, compression="lzw")
#png(file = "C:/R/2016_1/out/pft_essf_site means.png", width = 3600, height = 2400, units = "px", res = 400)
ESSF =
par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the ESSF")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="black")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="grey")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=8, cex=1.25, col="black")

plotchar <- c(24,21,21,22,24,24,22,8)
linetype <- c(1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("black", "grey", "white", "grey", "white", "grey", "white")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)

#dev.off()

############################ ICH #################################

ich <- subset(df_means, bec=="2", select = c(10:17, yr))

y1 <- tapply(ich$pft1, ich$yr, mean)
y2 <- tapply(ich$pft2, ich$yr, mean)
y3 <- tapply(ich$pft3, ich$yr, mean)
y4 <- tapply(ich$pft4, ich$yr, mean)
y5 <- tapply(ich$pft5, ich$yr, mean)
y6 <- tapply(ich$pft6, ich$yr, mean)
y7 <- tapply(ich$pft7, ich$yr, mean)
y8 <- tapply(ich$pft8, ich$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

#tiff(file = "C:/R/2016_1/out/pft x yr_ich.tiff", 
#     width = 4650, height = 3000, units = "px", res = 600, compression="lzw")
#png(file = "C:/R/2016_1/out/pft_ich_site means.png", width = 3600, height = 2400, units = "px", res = 400)

ICH =
par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the ICH")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="black")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="grey")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=8, cex=1.25, col="black")

plotchar <- c(24,21,21,22,24,24,22,8)
linetype <- c(1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("black", "grey", "white", "grey", "white", "grey", "white")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)


#dev.off()

############################ SBS #################################

sbs <- subset(df_means, bec=="3", select = c(10:17, yr))

y1 <- tapply(sbs$pft1, sbs$yr, mean)
y2 <- tapply(sbs$pft2, sbs$yr, mean)
y3 <- tapply(sbs$pft3, sbs$yr, mean)
y4 <- tapply(sbs$pft4, sbs$yr, mean)
y5 <- tapply(sbs$pft5, sbs$yr, mean)
y6 <- tapply(sbs$pft6, sbs$yr, mean)
y7 <- tapply(sbs$pft7, sbs$yr, mean)
y8 <- tapply(sbs$pft8, sbs$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

#tiff(file = "C:/R/2016_1/out/pft x yr_sbs.tiff", 
#     width = 4650, height = 3000, units = "px", res = 600, compression="lzw")
#png(file = "C:/R/2016_1/out/pft_sbs_site means.png", width = 3600, height = 2400, units = "px", res = 400)

SBS =
par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the SBS")
title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="black")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="grey")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="grey")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="grey")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=8, cex=1.25, col="black")

plotchar <- c(24,21,21,22,24,24,22,8)
linetype <- c(1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("black", "grey", "white", "grey", "white", "grey", "white")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)


#dev.off()


#library(gplots)


dev.off()



############################### Colours ###################

getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir) 

df <- read.table("C:/R/data/PFTdata_8pft.csv", header=T, sep=",")
df_means<-aggregate(.~site+yr, data=df, FUN=mean) 

############################ ESSF #################################

#png(file='PFT over time colours.png')

tiff(file = "C:/R/2016_1/out/pft x yr colours.tiff", width = 2400, height = 5000, units = "px", res = 600, compression="lzw")
par(mfrow= c(3, 1))

essf <- subset(df_means, bec=="1", select = c(10:17, yr))

y1 <- tapply(essf$pft1, essf$yr, mean)
y2 <- tapply(essf$pft2, essf$yr, mean)
y3 <- tapply(essf$pft3, essf$yr, mean)
y4 <- tapply(essf$pft4, essf$yr, mean)
y5 <- tapply(essf$pft5, essf$yr, mean)
y6 <- tapply(essf$pft6, essf$yr, mean)
y7 <- tapply(essf$pft7, essf$yr, mean)
y8 <- tapply(essf$pft8, essf$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

ESSF =
  par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the ESSF")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="seagreen")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="paleturquoise1")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="paleturquoise1")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="paleturquoise1")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=8, cex=1.25, col="red")

plotchar <- c(24,21,21,22,24,24,22,8)
linetype <- c(1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("seagreen", "paleturquoise1", "white", "paleturquoise1", "white", "paleturquoise1", "white")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)

############################ ICH #################################

ich <- subset(df_means, bec=="2", select = c(10:17, yr))

y1 <- tapply(ich$pft1, ich$yr, mean)
y2 <- tapply(ich$pft2, ich$yr, mean)
y3 <- tapply(ich$pft3, ich$yr, mean)
y4 <- tapply(ich$pft4, ich$yr, mean)
y5 <- tapply(ich$pft5, ich$yr, mean)
y6 <- tapply(ich$pft6, ich$yr, mean)
y7 <- tapply(ich$pft7, ich$yr, mean)
y8 <- tapply(ich$pft8, ich$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

ICH =
  par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the ICH")
#title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="seagreen")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="paleturquoise1")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="paleturquoise1")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="paleturquoise1")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=8, cex=1.25, col="red")

plotchar <- c(24,21,21,22,24,24,22,8)
linetype <- c(1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("seagreen", "paleturquoise1", "white", "paleturquoise1", "white", "paleturquoise1", "white")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)

############################ SBS #################################

sbs <- subset(df_means, bec=="3", select = c(10:17, yr))

y1 <- tapply(sbs$pft1, sbs$yr, mean)
y2 <- tapply(sbs$pft2, sbs$yr, mean)
y3 <- tapply(sbs$pft3, sbs$yr, mean)
y4 <- tapply(sbs$pft4, sbs$yr, mean)
y5 <- tapply(sbs$pft5, sbs$yr, mean)
y6 <- tapply(sbs$pft6, sbs$yr, mean)
y7 <- tapply(sbs$pft7, sbs$yr, mean)
y8 <- tapply(sbs$pft8, sbs$yr, mean)

y <- t(rbind(y1, y2, y3, y4, y5, y6, y7, y8))
x <- c(1, 5, 10, 20)

SBS =
  par(mar=c(3.85,3.85,0,0)+0.2)
plot.new()
plot.window(xlim=c(0,21), ylim=c(0, 80))
axis(1)
axis(2)
#title(main="Plant Functional Types in the SBS")
title(xlab="Time Since Burn (Years)")
title(ylab="Mean % Cover")
box()

points(x, y1, type="b", lty=1, pch=24, cex=1.25, col="black", bg="seagreen")
points(x, y2, type="b", lty=1, pch=21, cex=1.25, col="black", bg="paleturquoise1")
points(x, y3, type="b", lty=1, pch=21, cex=1.25, col="black", bg="white")
points(x, y4, type="b", lty=1, pch=22, cex=1.25, col="black", bg="paleturquoise1")
points(x, y5, type="b", lty=1, pch=24, cex=1.25, col="black", bg="white")
points(x, y6, type="b", lty=1, pch=24, cex=1.25, col="black", bg="paleturquoise1")
points(x, y7, type="b", lty=1, pch=22, cex=1.25, col="black", bg="white")
points(x, y8, type="b", lty=1, pch=20, cex=1.25, col="black", bg="red")

plotchar <- c(24,21,21,22,24,24,22,20)
linetype <- c(1, 1, 1, 1, 1, 1, 1, 1)
ptbackground <- c("seagreen", "paleturquoise1", "white", "paleturquoise1", "white", "paleturquoise1", "white", "red")

legend(
  x="topleft", y= null,
  c("PFT 1", "PFT 2", "PFT 3", "PFT 4", "PFT 5", "PFT 6", "PFT 7", "PFT 8"),
  cex=0.8, pch=plotchar, lty=linetype, col="black", pt.bg=ptbackground, pt.cex=1)

dev.off()

#################################################### END ###################