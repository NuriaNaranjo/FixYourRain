# Ordena tu lluvia
![](header.png)

## 1. Prepara los datos de entrada
* Crea un CSV en tu programa de Hojas de Cálculo o descarga el archivo de muestra (ordenatulluvia_misdatos.csv)
* Copia y pega los datos originales según las siguientes columnas:
 
Columna A (INDICATIVO): el nombre de la estación no debe comenzar por un número. Es conveniente renombrar aquellas estaciones que comienzan su código por un número utilizando la herramienta de Excel “concatenar” (o la herramienta similar en el software que estes utilizando) y añadiendo alguna letra delante del nombre de la estación. 

Columnas B y C (ANO y MES): se refiere al año y mes de medida.

Columnas de la D a la AH: contienen la información de la precipitación de AEMET de los días 1 a 31 del mes. (Nota: No modificar los datos originales, dejando los huecos en los días 29,30 y 31 para el mes de febrero; y día 31 para abril, junio, septiembre y noviembre.)


## 2. Descarga e instala R y RStudio
* Descarga e instala R: (<https://cran.r-project.org/bin/windows/base/>)
* Descarga e instala RStudio Deskstop: (<https://www.rstudio.com/products/rstudio/>)

## 3. Descarga el script del repositorio
*	Descarga en script del repositorio GitHub y guárdalo en un directorio conocido en tu equipo.
*	Asegúrate que el script y los datos de entrada se encuentran en el mismo directorio.

## 4. Inicia RStudio y ejecuta el script

*	Abre el script Ordenatulluvia: File  OpenFile  y selecciona Ordenatulluvia.R
*	Antes de ejecutar el script, asegúrate de cambiar en la fila 19 el directorio del archivo de los datos de entrada: p.e. setwd C:/Users/miequipo/Documents/*&**

_*Para saber cuál es el directorio de la carpeta en la que están guardados los datos, búscala, haz clic con el botón derecho del ratón sobre la carpeta y selecciona Propiedades. Busca la Ubicación de la carpeta y copia y pega en la línea._

_**Es importante comprobar que el separador de directorios es “/” y no “\” que es el separador por defecto._

*	Ejecuta el script línea por línea, haciendo clic sobre Run
*	Los datos de salida podrás encontrarlos en un archivo .csv en el directorio que has indicado en la fila 19.

## 5. Comprueba los datos de salida

Ten en cuenta que los datos de salida habrán sufrido tres importantes transformaciones:
*	Colocación de los datos de filas a columnas
*	Cambio de unidades: los datos originales de AEMET vienen expresados en décimas de mm y los datos de salida ya están transformados a mm.
*	Eliminación de los datos negativos: como la precipitación no puede ser negativa, se ha incluido en el script un bucle que transforma los datos negativos en cero.

## 6.	Transforma los datos de salida para poder tratarlos y explorarlos 

Si tu equipo está en castellano, para no tener problemas con el formato del separador decimal (punto o coma), ten en cuenta que puedes modificar el separador decimal en cualquier hoja de cálculo o procesador de textos (bloc de notas).


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
