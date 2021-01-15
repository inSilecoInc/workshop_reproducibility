html: 
	Rscript -e 'rmarkdown::render("index.Rmd", "all")'

pdf: 
	Rscript -e 'pagedown::chrome_print("index.Rmd")'
	
Rcode: 
	Rscript -e 'knitr::purl("index.Rmd")'
	
clearcache:
	rm -rf index_cache

cleanup:
		rm -rf index.html index.pdf index_files/ assets/