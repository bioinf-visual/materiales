# Introducción a ggplot2: Boxplots, Violin plots, y sinaplots

La actividad del día de hoy consiste en demostrar las capacidades de `ggplot2` y otros paquetes para generar boxplots, violinplots y sinaplots. Al igual que la vez pasada, vamos a generar un documento tipo "Tufte handout" en PDF + código en R que servirá como documento ilustrativo. También, por primera vez en la clase vamos a usar un set de datos real, con sentido biológico.
Los datos a utilizar vienen de un estudio donde el Castro Lab en colaboración con investigadores en Harvard y Children´s National Medical Center colectamos muestras de hisopos traqueales de personas con traqueostomías. El objetivo del estudio es identificar si es que hay algo en la composición bacteriana de la microbiota de los pacientes que los predisponga a desarrollar enfermedades respiratorias agudas del tracto respiratorio bajo.
En particular, los datos de hoy vienen de un cálculo de Diversidad Alfa para cada una de las muestras usando el índice de Shannon como métrica.

Descargar datos [aquí](https://github.com/bioinf-visual/materiales/blob/master/data.rds?raw=true)

Para leer los datos simplemente ejecuten el siguiente comando  

	readRDS("data.rds") -> mydata

Entonces, hoy vamos a:

* Generar Boxplots, violin plots y sinaplots con los datos proporcionados en forma de paneles usando el paquete `gridExtra`.  
* Usar colores para distinguir y destacar distintas variables en los datos, e.g., mes en que se tomó la muestra, género del paciente, infección o no, etc.  
* Demostrar y explicar el uso de muescas (notch) para mostrar el intervalo de confianza de la mediana.  
* Demostrar el uso de `geom_jitter` para minimizar el efecto de superposición de puntos (overplotting)

Recuerden configurar el directorio de trabajo y cargar `ggplot2`  

		setwd("/midirectorio/")
		library(ggplot2)
		library(sinaplot)

En sus máquinas deberían tener instalados estos paquetes a través del comando `install.packages()`  

Con respecto al documento Tufte, recuerden que el tipo de archivo de salida lo controlan con las instrucciones que escriben en el primer párrafo:

	---
	title: "Boxplots, Violin plots y sinaplots"
	subtitle: "ggplot2, sinaplot, y R Studio"
	author: "Edward Tufte"
	date: "`r Sys.Date()`"
	output:
		tufte::tufte_handout: default
  		tufte::tufte_html: default
	---

Adicionalmente necesitan tener instalado el programa [MacTex](https://tug.org/mactex/) si están usando Mac, y sus equivalentes en Linux y Windows. Les recomiendo ver el código detrás de este ejemplo [http://rstudio.github.io/tufte/](http://rstudio.github.io/tufte/) para entender cómo cambiar distintos aspectos del formato.

--

Para cumplir con el resto de los requisitos del lab, les recomiendo apoyarse fuertemente en la excelente documentación del paquete [ggplot2](http://docs.ggplot2.org/current/) al igual que en el libro [ggplot2. elegant graphics for data analysis](https://github.com/bioinf-visual/materiales/raw/master/Wickham.pdf) por Hadley Wickham.  

Para el reporte en PDF, tienen que revisar la documentación del paquete `tufte` [aquí](http://rmarkdown.rstudio.com/tufte_handout_format.html) y [aquí](https://cran.rstudio.com/web/packages/tufte/index.html).  
