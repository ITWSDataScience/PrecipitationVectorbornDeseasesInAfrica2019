library(sp)
library(rgdal)
library(geosphere)
library(dismo)
library(rgeos)

df <- read.csv("C:\\Users\\USER\\Documents\\College\\F19\\Data_Science\\Assingment - 4\\HealthMapData - Africa 25th May - 25th Nov.csv")
df <- df[,c("Lng","Lat","Disease")]

str(df)
summary(df)

xy <- SpatialPointsDataFrame(
  matrix(c(df$Lng,df$Lat), ncol=2), data.frame(ID=seq(1:length(df$Lng))),
  proj4string=CRS("+proj=longlat +ellps=WGS84 +datum=WGS84"))

mdist <- distm(xy)

hc <- hclust(as.dist(mdist), method="complete")

#plot(hc)
d=40
xy$clust <- cutree(hc, h=d)

xy@bbox[] <- as.matrix(extend(extent(xy),0.001))

cent <- matrix(ncol=2, nrow=max(xy$clust))
for (i in 1:max(xy$clust))
  cent[i,] <- gCentroid(subset(xy, clust == i))@coords

ci <- circles(cent, d=d, lonlat=T)

plot(ci@polygons, axes=T)
plot(xy, col=rainbow(4)[factor(xy$clust)], add=T)
title(main = "Hierarchical Cluster Analysis")