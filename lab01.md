# Introducción a ggplot2: gráficos de dispersión

La actividad del día de hoy consiste en demostrar las capacidades de `ggplot2` para generar gráficos de dispersión. Adicionalmente, vamos a generar un documento tipo "Tufte handout" en PDF + código en R que servirá como documento ilustrativo de las capacidades de ggplot2.

Hoy vamos a:

* Generar gráficos de dispersión usando el set de datos `diamonds` que viene precargado en R
* Demostrar cómo colorear puntos de datos en el gráfico de dispersión usando *"estéticas"* (aesthetics)
* Demostrar cómo podemos hacer que el área de los puntos sea proporcional a alguna magnitud de interés usando el argumento `size=`
*  Demostrar cómo hacer que la forma de cada punto corresponda con una variable categórica usando el argumento `shape=`
*  Demostrar el uso de ajustes estadísticos a los datos usando `geom_smooth()`
*  Demostrar el uso de *"faceting"* para generar figuras con paneles múltiples 

Comencemos por configurar nuestro directorio de trabajo y cargar `ggplot2`  

		setwd("/midirectorio/")
		library(ggplot2)

Recuerden que sus máquinas deberían tener instalado `ggplot2` a través del comando `install.packages("ggplot2")`  

Agreguemos los datos `diamonds` a nuestro ambiente de trabajo y echemos un vistazo a su estructura  

		data("diamonds")
		View(diamonds)
		help(diamonds)
		str(diamonds)
		class(diamonds)

Lo siguiente es entender el concepto de "estética" asociado a `ggplot2`. En `ggplot2` un *aesthetic* es una dimension de un gráfico que se puede percibir visualmente. El ejemplo más simple es un eje X y un eje Y. Otros *aesthetics* tienen que ver con color, tamaño y forma.

		ggplot(diamonds, aes(x=carat, y=price)) + geom_point()
		
![scatter](https://github.com/bioinf-visual/materiales/raw/master/scatter.png)

Para cumplir con el resto de los requisitos del lab, les recomiendo apoyarse fuertemente en la excelente documentación del paquete [ggplot2](http://docs.ggplot2.org/current/) al igual que en el libro [ggplot2. elegant graphics for data analysis](https://github.com/bioinf-visual/materiales/raw/master/Wickham.pdf) por Hadley Wickham.  
Para el reporte en PDF, tienen que revisar la documentación del paquete `tufte` [aquí](http://rmarkdown.rstudio.com/tufte_handout_format.html) y [aquí](https://cran.rstudio.com/web/packages/tufte/index.html).  
