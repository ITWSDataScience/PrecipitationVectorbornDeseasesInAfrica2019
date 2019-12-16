# Precipitation and Mosquito-Borne Diseases in Africa 

## Group 9

### Introduction

This project is on Clustering and Visualizing the trends of Vector borne diseases in Africa and to demonstrate the relation between rainfall and diseases in Africa for the second half of 2019.


### Getting Started:

#### Download TAMSAT Data:

The rainfall data can be downloaded from TAMSAT website. There is the option to download either individual files or a single compressed zip file containing all products for a given time stamp and year. To download individual files or zipped files (one for each year), you can download the data by replacing the relevant date fields.
The files adhere to the following naming convention: rfeYYYY_MM_[dd].v3.nc and are downloaded in NetCDF format. 
To view NetCDF files, download Panoply software to load and save the data. Panoply is a useful, cross-platform application for visualisation and simple manipulation of NetCDF.

#### Mosquito Dataset:

The mosquito dataset can be downloaded from the Healthmap website and searching the disease and location area. The corresponding data can then be downloaded. The data is downloaded in .csv format.

### Visualization:

The two datasets can be merged and used for visualization with the help of a python script(Map_Visualization.py) and corresponding maps can be plotted for every month by changing the month file path in the python script.

### Data Models and Analyzing:

Two models namely hclust and KNN are used to cluster the diseases based on the disease location and find any relation between community areas, rainfall and diseases.

### Important Links:

- Rainfall Dataset: https://www.tamsat.org.uk/data/archive
- Mosquito Dataset: https://www.healthmap.org/en/
- Panoply: https://www.giss.nasa.gov/tools/panoply/


Watch our video here

[![Precipitation and Mosquito-borne Diseases in Africa 2019](http://img.youtube.com/vi/rMu_vTcL__g/0.jpg)](http://www.youtube.com/watch?v=rMu_vTcL__g "Precipitation and Mosquito-borne Diseases in Africa 2019")


### Contributors:
- Hariharan Sreenivas (sreenh@rpi.edu)
- Jagrati Sharma (sharmj@rpi.edu)
- Ridhi Gulati (gulatr@rpi.edu)
