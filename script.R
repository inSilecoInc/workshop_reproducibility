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




## ---- eval = FALSE------------------------------------------------------------
## install.packages("tinytex")
## tinytex::install_tinytex()


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

## ----setup3, include = FALSE--------------------------------------------------
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


