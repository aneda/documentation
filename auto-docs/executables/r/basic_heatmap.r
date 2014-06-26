library(plotly)

p <- plotly(username='TestBot', key='r1neazxo9w')

data <- list(
  list(
    z = matrix(c(1, 20, 30, 20, 1, 60, 30, 60, 1), nrow=3, ncol=3), 
    type = "heatmap"
  )
)

response <- p$plotly(data, kwargs=list(filename="basic-heatmap", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename