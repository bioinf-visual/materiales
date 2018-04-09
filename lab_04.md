# Heatmaps

La actividad del día de hoy consiste en realizar dos tipos de heat maps o mapas de calor para entender la estructura transcripcional de un grupo de muestras. El primer heat map tiene que ver con comparar distintas muestras entre sí, calculando el coeficiente de correlación de Spearman entre ellas antes de graficar. El segundo heatmap tiene que ver con visualizar la expresión génica de un grupo de genes (top 20) por cada muestra.  
Los datos con los cuáles vamos a trabajar son reales y vienen de un experimento de expresión génica en *Salmonella enterica* bajo dos condiciones de estrés para bacterias silvestres (wt) y mutantes (slyA).

Puedes descargar los datos transcriptómicos [aquí](https://github.com/bioinf-visual/materiales/blob/master/data_genes.rds?raw=true)  
Y una tabla con la descripción de cada muestra [aquí](https://raw.githubusercontent.com/bioinf-visual/materiales/master/desc.txt)  

Para leer los datos transcriptómicos directamente en R usa el siguiente comando:  

		readRDS("data_genes.rds") -> mydata

Entonces, hoy vamos a:

* Generar un heat map que muestre las relaciones entre las muestras proporcionadas. Recuerden que estamos interesados en la forma de los datos en vez de la magnitud de éstos (pista: deben calcular la correlación entre las muestras; [ver aquí](http://www.opiniomics.org/you-probably-dont-understand-heatmaps/)).  
* Demostrar el uso de distintas escalas o paletas de color contrastantes.  
* Seleccionar los genes cuya expresión es mayor en una condición (top 20) y generar un heatmap.  
* Mostrar el efecto de usar distintos métodos de clustering.  
* Agregar título, etiquetas en los ejes, y leyenda al heat map.   

Recuerden configurar el directorio de trabajo y cargar `pheatmap`  

		setwd("/midirectorio/")
		library(pheatmap)

En sus máquinas deberían poder instalar estos paquetes a través del comando `install.packages()` 

La última parte del lab tiene que ver con graficar un diagrama de Venn con los siguientes datos:  

		set.seed(1)
		mat <-
		  cbind(
		  A = sample(c(TRUE, TRUE, FALSE), size = 50, replace = TRUE),
		  B = sample(c(TRUE, FALSE), size = 50, replace = TRUE),
		  C = sample(c(TRUE, FALSE, FALSE, FALSE), size = 50, replace = TRUE)
		  ) 

Y con graficar una filogenia usando el siguiente árbol filogenético:  

		library(ape)
		library(phytools)
		read.tree("example.tre") -> tree
		midpoint.root(tree)
		ggtree(tree)

Con respecto a la tarea, recuerden que esta debe ser un documento Tufte. El tipo de archivo de salida lo controlan con las instrucciones que escriben en el primer párrafo:

	---
	title: "Heat maps"
	subtitle: "heatmaps"
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
