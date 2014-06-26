library(plotly)
library(ggplot2)
library("ggthemes")

py <- plotly("R-demos", "p9g4f35ytd")

dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
tableau <- (qplot(carat, price, data = dsamp, colour = cut) +
              theme_igray() +
              scale_colour_tableau())

out <- py$ggplotly(tableau)
plotly_url <- out$response$url