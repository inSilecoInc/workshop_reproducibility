all: ms code
	
ms: code ms/ms.Rmd 
	Rscript -e 'rmarkdown::render("ms/ms.Rmd")'

code: 
	Rscript -e 'lapply(list.files("R", full.names = TRUE), source); pipeline()'