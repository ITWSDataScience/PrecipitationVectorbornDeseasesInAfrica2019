# PrecipitationVectorborneDiseasesFor2019

## Group 9
## Team members: Hariharan Srineevasan, Jagrati Sharma, Ridhi Gulati

#### Introduction

This project is on Analyzing and Visualizing the trends of Vector borne diseases in Africa and to demonstrate the relation between rainfall and diseases in Africa for the year 2019.


### Getting Started:

#### Download TAMSAT Data:

The rainfall data can be downloaded from TAMSAT website. There is the option to download either individual files or a single compressed zip file containing all products for a given time stamp and year. To download individual files or zipped files (one for each year), you can download the data by replacing the relevant date fields.
The files adhere to the following naming convention: rfeYYYY_MM_[dd].v3.nc and are downloaded in NetCDF format. 
To view NetCDF files, download Panoply software to load and save the data. Panoply is a useful, cross-platform application for visualisation and simple manipulation of NetCDF.

#### Mosquito Dataset:

The mosquito dataset can be downloaded from the Healthmap website and searching the disease and location area. The corresponding data can then be downloaded.

### Visualization:

The two datasets can be merged and used for visualization with the help of a python script(Map_Visualization.py) and corresponding maps can be plotted for every month.


### Important Links:

- Rainfall Dataset: https://www.tamsat.org.uk/data/archive
- Mosquito Dataset: https://www.healthmap.org/en/
- Panoply: https://www.giss.nasa.gov/tools/panoply/





















----------------------------------------------------------------------------------------------------------------------------
The Global Precipitation Measurement mission is an international network of satellites that provide the next-generation global observations of rain and snow
The precipitation data can be found using the following links :
GPM - Global Precipitation Measurement | NASA
GPM Data Downloads | Precipitation Measurement Missions

#### Documentation for GPM:
More information and documentation on how to use GPM data can be found in the link below:
https://pps.gsfc.nasa.gov/Documents/filespec.GPM.1AGMI.pdf


### 2nd November:

Archived webinars: https://www.globe.gov/web/mission-mosquito/overview/webinars/archived-webinars?p_p_id=56_INSTANCE_yLnAKaUQnxTP&p_p_lifecycle=0&p_p_state=normal&p_p_mode=view&p_p_col_id=column-1&p_p_col_count=1

#### Precipitation data 
https://data.gov.in/keywords/annual-rainfall
https://data.gov.in/catalog/rainfall-india?filters%5Bfield_catalog_reference%5D=1090541&format=json&offset=0&limit=6&sort%5Bcreated%5D=desc

#### Webinar: 
The webinar “Using NASA Earth Observation Satellite to Predict, Monitor and Respond to Vector-borne and Water-Related Disease ” helps to understand how to access Giovanni data.
Giovanni is the tool to access, analyze and visualize the data online.
https://pmm.nasa.gov/sites/default/files/videos/GPM-disease-webinar-advanced-6-28-18.mp4

The seminar gives a clear picture of how to understand the Imerg Final dataset to get the precipitation data for every half an hour. But the dataset had missing values and could not be used for our analysis.
So, the precipitation data can be plotted for any time duration for India using the Imerg Final value. 

### 9th November:
We got precipitation data but we are unable to find exact data for mosquitoes but we found a map mapping rainfall and mosquitoes habitat which can serve as a guideline for us to merge our dataset:
https://vis.globe.gov/mosquitohabitats

### 10th November:
Objective: To find the appropriate dataset and merge them.

We started with searching for datasets in the following links:
https://wwwn.cdc.gov/norsdashboard/
https://3.basecamp.com/3503958/buckets/5052097/documents/880667336
https://3.basecamp.com/3503958/projects/5052097


The mosquito data set can be found here:
https://www.healthmap.org/en/ 

The site gives data related to vector-borne mosquito data and we are primarily working on the following diseases:
Malaria, dengue, West Nile virus, chikungunya, yellow fever, filariasis, tularemia, dirofilariasis, Japanese encephalitis, Saint Louis encephalitis, Western equine encephalitis, Eastern equine encephalitis, Venezuelan equine encephalitis, Ross River fever, Barmah Forest fever, La Crosse encephalitis, and Zika fever

#### Filezilla: 
We used Filezilla to access the vector-borne disease data Filezilla helps to easily download files from the web. The link to download Filezilla: https://filezilla-project.org/

### November 16:

#### IMERG documentation: https://pmm.nasa.gov/sites/default/files/document_files/IMERG_doc_190909.pdf
(Parameters on Page 25)

#### Indian Data for Rainfall for the year 2017(Monthly):
http://hydro.imd.gov.in/hydrometweb/(S(uly5qi553o20y345ehlvli45))/PRODUCTS/Publications/Rainfall%20Statistics%20of%20India%20-%202017/Rainfall%20Statistics%20of%20India%20-%202017.pdf

Sample data found on the link:


Alternative data (In case we don’t get good data for India)

The precipitation data can be found from this link:
https://www.climate.gov/maps-data/dataset/daily-temperature-and-precipitation-reports-data-tables
