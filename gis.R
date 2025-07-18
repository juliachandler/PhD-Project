paste("Today is", date())

install.packages(c('maptools', 'mapdata', 'maps', 'mapproj'))
library(maptools)
gis.data <- read.table("C:/R/data/veg.csv", header=TRUE, sep=',')


data(wrld_simpl)
plot(wrld_simpl, xlim=c(-145,-100), ylim=c(49,70), axes=TRUE, col='light yellow')
# restore the box around the map
box()
# plot points
points(gis.data$Longitude, gis.data$Latitude, col='orange', pch=20, cex=0.75)
# plot points again to add a border, for better visibility
points(gis.data$Longitude, gis.data$Latitude, col='red', cex=0.75)


install.packages(c'mapdata', 'maps', 'mapproj'))

library(maps)
library(mapdata)
library(maptools)  #for shapefiles
library(scales)  #for transparency
#pcontorta <- readShapePoly("pinucont.shp") #to read ina shapefile

library(mapproj)
map(database= "world", ylim=c(45,90), xlim=c(-160,-50), col="grey80", fill=TRUE, projection="mercator", orientation= c(90,0,225))
lon <- c(-72, -66, -107, -154)  #fake longitude vector
lat <- c(81.7, 64.6, 68.3, 60)  #fake latitude vector
coord <- mapproject(lon, lat, proj="mercator", orientation=c(90, 0, 225))  #convert points to projected lat/long
points(coord, pch=20, cex=1.2, col="red")  #plot converted points

#################################

paste("Today is", date())
gis <- read.table("C:/R/data/site_description.csv", header=TRUE, sep=',')
head(gis)
# if we only need columns 2 and 3:
#sdm1 <- sdm1[,2:3]
#head(sdm1)
names(sdm1)

# loads the dismo library
library(dismo)
file <- paste(system.file(package="dismo"), "/site_description.csv", sep="")
# this is the file we will use:
file

# let's read it
#sdm1 <- read.table(file, header=TRUE, sep=',')
# let's inspect the values of the file first rows
head(gis)
dim(gis)
names(gis)

# to create a subset where Latitude and Lognitude data exists
#gis.subset <- subset(gis, !is.na(Latitude) & !is.na(Longitude))
#dim(gis.subset)
#gis.subset[1:4, c(1:5,7:10)]

install.packages('maptools')
library(maptools)
data(wrld_simpl)
plot(wrld_simpl, xlim=c(-145,-100), ylim=c(49,70), axes=TRUE, col='light yellow')
# restore the box around the map
box()
# plot points
points(gis$Longitude, gis$Latitude, col='orange', pch=20, cex=0.75)
# plot points again to add a border, for better visibility
points(gis$Longitude, gis$Latitude, col='red', cex=0.75)

dups <- duplicated(gis[, 1:10]) #which records are duplicates (only for the first 10 columns)?
lonzero <- lonzero[dups, ] #remove duplicates
lonzero[,1:13]

################################################
#http://www.molecularecologist.com/2012/09/making-maps-with-r/

install.packages(c('maptools', 'mapdata', 'maps', 'mapproj')

library(maps)
library(mapdata)
library(maptools)  #for shapefiles
library(scales)  #for transparency
#pcontorta <- readShapePoly("pinucont.shp") #to read ina shapefile

library(mapproj)
map(database= "world", ylim=c(45,90), xlim=c(-160,-50), col="grey80", fill=TRUE, projection="mercator", orientation= c(90,0,225))
lon <- c(-72, -66, -107, -154)  #fake longitude vector
lat <- c(81.7, 64.6, 68.3, 60)  #fake latitude vector
coord <- mapproject(lon, lat, proj="mercator", orientation=c(90, 0, 225))  #convert points to projected lat/long
points(coord, pch=20, cex=1.2, col="red")  #plot converted points

# center on NYC
#map(’world’,proj=’azequalarea’,orient=c(41,-74,0))
#map.grid(m,col=2)
#points(mapproject(list(y=41,x=-74)),col=3,pch="x",cex=2)



library(maps)
m <- map("canada",plot=FALSE)
map("usa",project="albers",par=c(39,45))
#map.grid(m)
# get unprojected world limits
m <- map(’world’,plot=FALSE)

# center on Vancouver
map(’world’,proj=’azequalarea’,orient=c(49,-122,0))
#map.grid(m,col=2)
points(mapproject(list(y=49,x=-122)),col=3,pch="x",cex=2)

#Converts latitude and longitude into projected coordinates
mapproject(x, y, projection="", parameters=NULL, orientation=NULL)




install.packages('maptools')
install.packages('maps')
install.packages('mapdata')
install.packages('mapproj')


