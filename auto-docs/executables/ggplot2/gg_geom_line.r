library(plotly)
library(ggplot2)
library(plyr)

py <- plotly("R-demos", "p9g4f35ytd")

mry <- do.call(rbind, by(movies, round(movies$rating), function(df) {
  nums <- tapply(df$length, df$year, length)
  data.frame(rating=round(df$rating[1]), year = as.numeric(names(nums)), number=as.vector(nums))
}))

p <- ggplot(mry, aes(x=year, y=number, group=rating))
out <- py$ggplotly(p + geom_line(aes(colour = rating)) + scale_colour_gradient(low="red"))

plotly_url <- out$response$url