## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE,
  dev = "png",
  dpi = 108,
  fig.width = 6,
  fig.height = 4.5,
  fig.align = 'center',
  width = 120
)
options(htmltools.dir.version = FALSE, htmltools.preserve.raw = FALSE)
rfa <- function(...) icon::fontawesome(...)
emj <- function(...) emo::ji(...)
kig <- function(...) knitr::include_graphics(...)


## ---- child = "part1.Rmd"-----------------------------------------------------

## ---- echo = FALSE, out.width = "50%"-----------------------------------------
kig("img/r_words.png")


## ---- echo = FALSE, out.width = "80%"-----------------------------------------
kig("img/terminos.png")


## ---- echo = FALSE, out.width = "50%"-----------------------------------------
kig("img/cover_rrs.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/knowledge1.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/knowledge2.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/knowledge3.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/knowledge2.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/knowledge4.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/workflow1.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/workflow2.png")


## ---- echo = FALSE, out.width = "67%"-----------------------------------------
kig("img/replic_osf.png")


## ---- echo = FALSE, out.width = "90%"-----------------------------------------
kig("img/replic_osf2.png")


## ---- echo = FALSE, out.width = "65%"-----------------------------------------
kig("img/retractation_index.png")


## ---- echo = FALSE, out.width = "55%"-----------------------------------------
kig("img/workflow3.png")


## ---- echo = FALSE, out.width = "80%"-----------------------------------------
kig("img/spectrum.png")



## ---- child = "part2.Rmd"-----------------------------------------------------

## ---- eval = FALSE------------------------------------------------------------
## rmarkdown::render(input = "myrmd.Rmd")


## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(eval=FALSE)


## -----------------------------------------------------------------------------
library(tibble)
data(iris)
head(iris)


## ----echo = FALSE, eval = TRUE------------------------------------------------
library(tibble)
data(iris)
head(iris)


## -----------------------------------------------------------------------------
library(ggplot2)
data(iris)
ggplot(
      data=iris,
      aes(x = Sepal.Length,
          y = Sepal.Width)
  ) +
geom_point(
  aes(color=Species, shape=Species)
) +
xlab("Sepal Length") +
ylab("Sepal Width") +
ggtitle("Sepal Length-Width")


## ----echo = FALSE, eval = TRUE, dpi=300, fig.height=5, fig.width=5------------
library(ggplot2)
data(iris)
ggplot(
      data=iris,
      aes(x = Sepal.Length,
          y = Sepal.Width)
  ) +
  geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")


## -----------------------------------------------------------------------------
library(leaflet)
leaflet(height=400, width=400) %>%
  addTiles() %>%
  addMarkers(lng=174.768, lat=-36.852,
             popup="The birthplace of R")


## ----echo = FALSE, eval = TRUE, dpi=300---------------------------------------
library(leaflet)
leaflet(height=400, width=400) %>%
  addTiles() %>%
  addMarkers(lng=174.768, lat=-36.852,
             popup="The birthplace of R")


## -----------------------------------------------------------------------------
library(rbokeh)
p <- figure() %>%
  ly_points(Sepal.Length, Sepal.Width,
    data = iris,
    color = Species, glyph = Species,
    hover = list(Sepal.Length, Sepal.Width))
p


## ----echo = FALSE, eval = TRUE, warning=FALSE, dpi = 300----------------------
library(rbokeh)
p <- figure(width = 400, height = 400)  %>%
  ly_points(Sepal.Length, Sepal.Width, data = iris,
    color = Species, glyph = Species,
    hover = list(Sepal.Length, Sepal.Width))
p


## ----include=FALSE, eval = TRUE-----------------------------------------------
knitr::opts_chunk$set(eval=TRUE)


## ----palmer, eval = FALSE-----------------------------------------------------
## library(palmerpenguins)
## data(package = 'palmerpenguins')


## ----load, echo = FALSE-------------------------------------------------------
library(palmerpenguins)

## ----head---------------------------------------------------------------------
head(penguins)




## -----------------------------------------------------------------------------
str(knitr::opts_chunk$get())


## -----------------------------------------------------------------------------
head(iris)


## ----echo = FALSE-------------------------------------------------------------
head(iris)


## ----eval = FALSE-------------------------------------------------------------
## head(iris)


## ----include = FALSE----------------------------------------------------------
head(iris)


## ----results = "hold"---------------------------------------------------------
1 + 1
2 + 2


## ----results = "hide", fig.height=3.5, fig.width=4, fig.retina=3, fig.align='center'----
1 + 1
ggplot(data = iris,
       aes(x = Petal.Length,
           y = Petal.Width)) +
  geom_point()


## ----fig.height = 3,fig.width = 5,echo = FALSE,dpi = 300----------------------
ggplot(data = iris,
       aes(x = Sepal.Length,
           y = Sepal.Width,
           color = Species)) +
  geom_point()


## ----fig.height = 3,fig.width = 5,echo = FALSE,dpi = 300,fig.cap = 'Awesome figure'----
ggplot(data = iris,
       aes(x = Sepal.Length,
           y = Sepal.Width,
           color = Species)) +
  geom_point()



## ---- child = "part3.Rmd"-----------------------------------------------------

## ---- echo = FALSE, out.width = "80%"-----------------------------------------
kig("img/spectrum.png")


## ---- echo = FALSE, out.width = "50%"-----------------------------------------
kig("https://git-scm.com/book/en/v2/images/local.png")


## ---- echo = FALSE, out.width = "50%"-----------------------------------------
kig("https://git-scm.com/book/en/v2/images/centralized.png")


## ---- echo = FALSE, out.width = "42%"-----------------------------------------
kig("https://git-scm.com/book/en/v2/images/distributed.png")


## ---- echo = FALSE, out.width = "42%"-----------------------------------------
kig("https://git-scm.com/book/en/v2/images/distributed.png")


## ---- echo = FALSE, out.width = "42%"-----------------------------------------
kig("https://docs.ropensci.org/targets/reference/figures/logo.png")


## ---- echo = FALSE, out.width = "42%"-----------------------------------------
kig("https://raw.githubusercontent.com/r-lib/devtools/master/man/figures/logo.svg")


## ---- echo = FALSE, out.width = "42%"-----------------------------------------
kig("https://raw.githubusercontent.com/r-lib/usethis/master/man/figures/logo.png")


## ---- echo = FALSE, out.width = "50%"-----------------------------------------
kig("https://raw.githubusercontent.com/rstudio/renv/master/man/figures/logo.svg")


## ---- echo = FALSE------------------------------------------------------------
# # Dockerize
#
# - [docker](https://www.docker.com/)
#
# ---
# # Archive
#
# - reference [https://zenodo.org/](Zenodo)
#
# ---
# # Holepunch
#
# - once set up o GH
#
# https://github.com/karthik/holepunch
#
# https://books.ropensci.org/targets/walkthrough.html#about-this-minimal-example
# https://github.com/ropensci/targets
# https://github.com/wlandau/targets-minimal



## ---- child = "partResources.Rmd"---------------------------------------------

## ---- echo = FALSE, out.width = "70%"-----------------------------------------
kig("img/degree_repro.png")


