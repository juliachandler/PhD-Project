dat <- read.table("C:/R/data/veg.csv", header=T, sep=",")
df <- aggregate(.~bec + yr, data=df1, FUN=mean)
df1<-dat[c(1,9:153)]
df <- aggregate(.~bec + yr, data=df1, FUN=mean)


df1<-dat[c(1,9:153)]
df <- aggregate(.~bec + yr, data=df1, FUN=mean)
pft6 <- df[,c("CHIMUMB","GOODOBL","LISTCOR","MONEUNI","ORTHSEC",
              +                 "PLATAQU","PLATOBT","PLATSTR","PYRO_SP")]