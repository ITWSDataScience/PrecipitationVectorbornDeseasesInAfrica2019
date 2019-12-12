import os
os.environ['PROJ_LIB'] = 'C:\\Users\\ridhi\\AppData\\Local\\Continuum\\miniconda3\\Lib\\site-packages\\mpl_toolkits\\basemap'
from mpl_toolkits.basemap import Basemap
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from netCDF4 import Dataset

#df = pd.read_excel(r'C://Users//ridhi//Downloads//HealthMapData - Africa 25th May - 25th Nov.xlsx','Sheet1')
df=pd.read_csv('C://Users//ridhi//Downloads//healthmapdata.csv',delimiter=',')
fig = plt.figure(figsize=(12,9))

#basemap parameters
m = Basemap(projection='mill',
           llcrnrlat = -38.6,
           urcrnrlat = 39.6,
           llcrnrlon = -22.2,
           urcrnrlon = 55.1,
           resolution = 'c')

m.drawcoastlines()
m.drawparallels(np.arange(-90,90,10),labels=[True,False,False,False])
m.drawmeridians(np.arange(-180,180,30),labels=[0,0,0,1])

sites_lat_y = df['Lat'].tolist()
sites_lon_x = df['Lng'].tolist()

colors = ['green', 'darkblue', 'yellow', 'red', 'blue', 'orange']
my_example_nc_file = 'C:/Users/ridhi/Downloads/Data_Analytics/DataSets/EPI/rfe2019_05.v3.nc'
fh = Dataset(my_example_nc_file, mode='r')
lons = fh.variables['lon'][:]
lats = fh.variables['lat'][:]
tmax = fh.variables['rfe'][:]
tmax_units = fh.variables['rfe'].units
fh.close()

lon, lat = np.meshgrid(lons, lats)
xi, yi = m(lon, lat)
# Plot Data
cs = m.pcolormesh(xi,yi,np.squeeze(tmax))

cbar = m.colorbar(cs, location='bottom', pad="10%")
cbar.set_label(tmax_units)

m.scatter(sites_lon_x,sites_lat_y,latlon=True, s=50, c='red',marker='o', alpha=1, edgecolor='k', linewidth=1, zorder=2)

#Display the map
plt.title('May 2019', fontsize=20)
plt.show()

