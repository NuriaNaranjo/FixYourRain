# FixYourRain
![](header.png)

## Aim
"FixYourRain" is a simple tool, built under free R code, whith main goal to facilitate the organization of precipitation data downloaded or requested from the Spanish Meteorological Agency (AEMET; <https://www.aemet.es/es/portada>).

## Motivation
The daily precipitation data provided by AEMET is delivered in a file/spreadsheet where each day of the month occupies a different column in a spreadsheet.
Ususally, the users, for treatment or analysis, organize the data with daily dates continuously, and each AEMET rain gauge occupying a column.
Runing "FixYourRain" tool, make possible to carry out these changes of format with a minimum investment of time and zero cost of economic resources.

## 1. Organize input data 
* Create a CSV in your Spreadsheet program or download the sample file (precipitation_to_fix.csv).

* Copy and paste the original data according to the following columns: 
 
Column 1 (INDICATIVO): the name of the rain gauge must not begin with a number. It is convenient to rename those stations that start their code with a number using the Excel “concatenate” tool (or the similar tool in the software you are using) and adding a letter before the station name. 

Columns 2 and 3 (ANO and MES):refers to the year and month of measurement. 

Columns from 4 to 34: contains the information of RAIN GAUGES from AEMET, day 1 to 31. (Note: do not fill the gaps in days 29,30 or 31 when are empty).

## 2. Download and Install R y RStudio
* Download and Install R: (<https://cran.r-project.org/bin/windows/base/>)
* Download and Install RStudio Deskstop: (<https://www.rstudio.com/products/rstudio/>)

## 3. Download the script from this repository
*	Download the script of this repository and save it on a known directory.
*	Both, the script and input data must be on the same directory.

## 4. Start RStudio and run the script

*	Start the script FixYourRain: File > OpenFile and select FixYourRain.R
*	Before running the script, change the directory of your files at row 24 > setwd C:/Users/miequipo/Documents/  *(read below)

___*Be sure that the link use this separator “/” and no “\”___

*	Run the script
*	Output data could be found on selected directory as a .csv file.

## 5. Check output data

Take in account the output data have been transformated following these chenges:
*	Data relocated in columns.
*	Units changed: from tenths of mm to mm.
*	Negative data have been replace by 0.

## 6.	Treat output data to be able to explore and explote it

Remember to check decimal separators on your settings (periods or commas). Also you can replace it masivement on Notepad. 


## Contributor

@chesstor [https://github.com/chesstor/]

## References

R Core Team (2022). _R: A language and environment for statistical computing._ R Foundation for Statistical Computing, Vienna, Austria. <https://www.R-project.org/>.

Wickham H (2007). _Reshaping Data with the reshape Package._ Journal of Statistical Software, 21(12), 1–20. <http://www.jstatsoft.org/v21/i12/>.

Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K & Yutani H (2019). _Welcome to the tidyverse._ Journal of Open Source Software, 4(43), 1686.DOI: 10.21105/joss.01686.

Wickham H, François R, Henry L & Müller K (2022). _dplyr: A Grammar of Data Manipulation._ <https://dplyr.tidyverse.org> , <https://github.com/tidyverse/dplyr>

Wickham H & Girlich M (2022). _tidyr: Tidy Messy Data._ <https://tidyr.tidyverse.org>, <https://github.com/tidyverse/tidyr>

Zeileis A & Grothendieck G (2005). _“zoo: S3 Infrastructure for Regular and Irregular Time Series.”_ Journal of Statistical Software, 14(6), 1–27.DOI: 10.18637/jss.v014.i06


## Contact

Nuria Naranjo Fernández & Héctor Aguilera  - nuria.naranjo.phd@gmail.com & h.aguilera@igme.es

Repository Link: [https://github.com/NuriaNaranjo/Ordena-tu-lluvia](https://github.com/NuriaNaranjo/Ordena-tu-lluvia)
