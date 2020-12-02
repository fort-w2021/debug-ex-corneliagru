source("scatterhist-start.R")
set.seed(20141103)
x <- cbind(x1 = rexp(100), x2 = rnorm(100))
plot_scatterhist(x)

plot_scatterhist(trees)
#Sys.setenv(LANG = "en")


debugonce(plot_scatterhist)
plot_scatterhist(x)

