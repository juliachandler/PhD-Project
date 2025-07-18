getwd()
setwd("C:/R/2016_1")
dir<-getwd()
list.files(dir)

df <- read.table("C:/R/data/veg.csv", header=T, sep=",")
#names(df)

########################################## PFT1

pft1sp <- df[,c("ABIELAS","PICEENE","PINUCON","PSEUMEG","THUJPLI","TSUGHET")] #remove ABIEAMA

########################################## PFT2

pft2sp <- df[,c("ACERGLA","ACHIMIL","ACTARUB","AMELALN","ANTE_SP","AQUIFOR","ARALNUD","ARNI_SP","ARUNDIO","ATHYFIL",
            "BOTR_SP","BROM_SP","CALACAN","CASTMIN","CASTPAR","CIRCALP","CORNSTO","DRYOEXP","ELYMGLA","EPILANG",
            "EQUIARV","EQUISYL","EURYCON","GALIBOR","GALIKAM","GALITRF","GYMNDRY","HERAMAX","LONIINV",
            "LUPI_SP","MAIARAC","MAIASTE","MITEBRE","MITENUD","MITEPEN","OPLOHOR","OSMOBER","PEDIBRA",
            "PETAPAL","PHLEALP","PROSHOO","PRUNPEN","RIBEGLA","RIBEHUD","RIBELAC","RIBEOXY","ROSAACI",
            "ROSAWOO","RUBUPAR","RUBUPUB","SAMBRAC","SENETRI","SPIRBET","STREAMP","STRELAN","SYMPFOL","THALOCC",
            "TIARTRI1","TIARTRI2","TRISCER","URTIDIO","VAHLATR","VALESIT","VERAVIR","VIBUEDU","VIOL_SP")]
#remove AGOSAUR
#replace ANTENEG & ANTEPUL with ANTE_SP
#replace BOTRLUN & BOTRVIR with BORT_SP
#replace BROMCil with BROM_SP
#remove CALARUB & CALASTR
#remove DESCCES, EPILGLA, EQUIPRA, EQUISCI, PETASAG, PTERAQU, SPIRDOU, SPIRPYR, SYMPCIL
#replace LUPIARC with LUPI_SP
#replace ARNI_COR with ARNI_SP
#remove VIOLAGLA

########################################## PFT3

pft3sp <- df[,c("AGROEXA","AGROSCA","ANAPMAR","CARE_SP",
            "CINNLAT","CIRS_SP","CORYSEM","CREP_SP","EPILCIL",
            "FRAGVIR","GERABIC","GEUMMAC","HEUCCHL","HIERALB",
            "HIERAUR","HIERGRA","HIERSCO","HIERUMB","LUZUPAR",
            "PHLEPRA","PRUNVUL","RANU_SP","RHINMIN","RIBELAX",
            "RUBUIDA","SENEPAU","TARAOFF", "POA_SPC")]
#replace CARECOI,CAREDEW,CAREFOE,CAREMAC,CAREMER,CAREPAC,CAREPEC,CAREROS with CARE_SP
#remove CERA_SP,LEUCVUL,ONOPACA,TRIFHYB,
#replace POAPRA with POA_SPC
#remove VIOLADU
#remove ARNILAT

########################################## PFT4

pft4sp <- df[,c("ALNUCRI","ALNUTEN","BETUPAP","POPUBAL","POPUTRE","SALI_SP","SORBSCO",
            "SORBSIT")]
#replace SALIBAC, SALIBEB, SALISCO with SALI_SP

########################################## PFT5

pft5sp <- df[,c("LEPTPYR","PETAFRI")]

#remove JUNC_SP, CALTLEP, CHRYTET, PETASAG, POAPAL

########################################## PFT5

pft6sp <- df[,c("CHIMUMB","GOODOBL","LISTCOR","MONEUNI","ORTHSEC",
            "PLATAQU","PLATOBT","PLATSTR","PYRO_SP")]
#replace PYROASA, PYROCHL, PYROMIN with PYRO_SP
#remove GEOCLIV, GOODREP, PLATORB")

########################################## PFT6

pft7sp <- df[,c("CLINUNI","CORNCAN","DIPHCOM","FESTOCC","HUPEOCC",
            "LINNBOR","LYCOANN","LYCOCLA","LYCODEN","MAIACAN",
            "MELALIN","PAXIMYR","RUBUPED","VIOL_SP")]
#remove ORYZASP
#replace VIOLORB with VIOL_SP

########################################## PFT7

pft8sp <- df[,c("MENZFER","RHODALB","VACCCAE","VACCMEM","VACCMYR","VACCOVA")]
#remove VACCALA, VACCPAR

########################################## COMBINE in DATAFRME

pft1<-rowSums(pft1sp)
pft2<-rowSums(pft2sp)
pft3<-rowSums(pft3sp)
pft4<-rowSums(pft4sp)
pft5<-rowSums(pft5sp)
pft6<-rowSums(pft6sp)
pft7<-rowSums(pft7sp)
pft8<-rowSums(pft8sp)

pft<-data.frame(pft1, pft2, pft3, pft4, pft5, pft6, pft7, pft8)
ecol<-df[1:9]
pft.dat<-data.frame(ecol, pft)

#write.csv(pft.dat,"C:/R/data/PFTdata_8pft.csv", row.names=FALSE)
