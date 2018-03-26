# Introducción a ggplot2: Histogramas y gráficos de densidad

La actividad del día de hoy consiste en demostrar las capacidades de `ggplot2` para generar histogramas y gráficos de densidad. Sin embargo, vamos a usar este tipo de gráfico para utilizar paletas de colores, escoger paletas de colores compatibles con personas con daltonismo, y asignar colores a niveles de factores de manera consistente. 
Al igual que la vez pasada, vamos a generar un documento tipo "Tufte handout" en PDF o HTML + código en R que servirá como documento ilustrativo de las capacidades de ggplot2.

Hoy vamos a:

* Generar histogramas y gráficos de densidad usando el set de datos `diamonds` que viene precargado en R
* Demostrar el efecto del número de bins o rangos en un histograma
* Contrastar el uso de las funciones `geom_density` y  `geom_density2d`
* Ejemplificar la funci'on y el efecto de la función `geom_density(adjust =)`
* Generar una paleta de colores con `RColorBrewer`
* Generar una paleta de colores compatible con personas con daltonismo (*color-blind palettes*)
* Generar un gráfico donde cada nivel en un factor tenga un color asignado directamente. Por ejemplo, para cada nivel de la columna *cut* o *color* o *clarity* del conjunto de datos *diamonds*. Pista: usar un vector `colores <- c("Ideal" = "#2980B9", "Premium" = "#644D52", "Good" = "#FFD34E")`. Les recomiendo buscar combinaciones de colores en herramientas en línea como [Adobe Color](https://color.adobe.com/explore/most-used/?time=all)

Recuerden configurar el directorio de trabajo y cargar `ggplot2`  

		setwd("/midirectorio/")
		library(ggplot2)

En sus máquinas deberían tener instalado `ggplot2` a través del comando `install.packages("ggplot2")`  
Adicionalmente, deberían instalar `RColorBrewer` para poder generar paletas de colores a medida. Una paleta de colores no es nada más que un conjunto de colores arbitrariamente seleccionados.


Con respecto al documento Tufte, recuerden que el tipo de archivo de salida lo controlan con las instrucciones que escriben en el primer párrafo:

	---
	title: "Histogramas y Gráficos de Densidad"
	subtitle: "ggplot2 y R Studio"
	author: "Edward Tufte"
	date: "`r Sys.Date()`"
	output:
		tufte::tufte_handout: default
  		tufte::tufte_html: default
	---

Adicionalmente necesitan tener instalado el programa [MacTex](https://tug.org/mactex/) si están usando Mac, y sus equivalentes en Linux y Windows. Les recomiendo ver el código detrás de este ejemplo [http://rstudio.github.io/tufte/](http://rstudio.github.io/tufte/) para entender c'omo cambiar distintos aspectos del formato.

--

Para cumplir con el resto de los requisitos del lab, les recomiendo apoyarse fuertemente en la excelente documentación del paquete [ggplot2](http://docs.ggplot2.org/current/) al igual que en el libro [ggplot2. elegant graphics for data analysis](https://github.com/bioinf-visual/materiales/raw/master/Wickham.pdf) por Hadley Wickham.  

Para el reporte en PDF, tienen que revisar la documentación del paquete `tufte` [aquí](http://rmarkdown.rstudio.com/tufte_handout_format.html) y [aquí](https://cran.rstudio.com/web/packages/tufte/index.html).  
