library(spdep)

df <- read.csv("C:\\Users\\USER\\Documents\\College\\F19\\Data_Science\\Assingment - 4\\HealthMapData - Africa 25th May - 25th Nov.csv")
df <- df[,c("Lng","Lat")]

#Matrix of coordinates
df.coords <- cbind(df$Lng,df$Lat)

#Creating spatial neighbours 
df.5nn <- knearneigh(df.coords, k=5, longlat = TRUE)
df.5nn.nb <- knn2nb(df.5nn)

plot(df.5nn.nb,df.coords)
title(main = "K-Nearest Neighbours Model")