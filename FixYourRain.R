# Instalar y cargar los paquetes necesarios
# Installing and loading packages
install.packages("pacman")
pacman::p_load(readr, tidyverse, tidyr, zoo, reshape2, dplyr, padr)

# Definir formato anglosajon para las fechas
# Set datetime format to English   
Sys.setlocale("LC_TIME", "English")

# Escribir directorio donde estan los datos de entrada
# Set working directory with input data file
setwd("My/Path")

# Abrir el archivo de datos de entrada y asignarlo a un data frame
# Load input data as a data frame
df <- as.data.frame(read_delim("precipitation_to_fix.csv", 
                                         delim = ";", escape_double = FALSE, trim_ws = TRUE))

# Preprocesado de nombres de columnas
# Column names preprocessing
names(df)[2] <- 'ANO'
names(df)[4:34] <- as.character(seq(1:31))

# Definir el formato de la fecha
# Specify date format
df$fecha <- as.yearmon(paste(df$ANO, df$MES), "%Y %m") 
head(df$fecha)

# Reformatear el data frame de acuerdo a nombre de la estacion y fecha
# Melt data frame for casting based on rain gauge station and date
df.m <- melt(df[,-c(2:3)], id.vars = c('INDICATIVO', 'fecha'))
df.m$date <-paste(df.m$variable, df.m$fecha, sep = "")
df.m$date <- as.Date(df.m$date, "%d%B%Y")

# Ordenar y limpiar el data frame, e indicar que la columna INDICATIVO va a ser el factor que define cada estacion
# Sort and clean data frame, and encode rain gauge station name (column INDICATIVO) as factor
df.m <- arrange(df.m, INDICATIVO, date)
df.m <- df.m[,-c(2:3)]
df.m$INDICATIVO <- as.factor(df.m$INDICATIVO)

# Renombrar columnas
# Rename columns
colnames(df.m) <- c('Station','Precipitation','Date')

# Pasar la precipitacion de decimas de mm a mm
# Transform precipitation from tenths of mm to mm
df.m$Precipitation <- df.m$Precipitation/10

# Eliminar los negativos en el caso de la precipitacion. ¡¡¡¡ATENCION!!!!: esta linea no debo correrla si estoy tratando temperatura
# Deleting negative values. WARNING!!!!: do not not run this line if processing temperature data 
df.m$Precipitation <- with(df.m, ifelse(Precipitation < 0, 0, Precipitation))

# Limpiar la columna date de NA
# Removing NAs from date column
summary(df.m)
df.m <- df.m %>% drop_na(Date)

# Colocar las filas en columnas segun el nombre de la estacion y rellenar los datos faltantes con NA
# Relocating rows as a columns according to rain gauge name and refill missing values with NA
clean_series <- df.m %>%
  spread(key = Station, value = Precipitation)

clean_series <- pad(clean_series)

# Exportar archivo de salida
# Export clean data as csv file
write_delim(clean_series, file="YourRain_fixed.csv", delim =";")
