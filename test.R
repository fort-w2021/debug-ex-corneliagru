library(rainbow)
set.seed(121212)
n <- 80
n_grid <- 100
t_grid <- seq(0, 1, l = n_grid)
x <- replicate(
  n,
  dbeta(t_grid, shape1 = runif(1, 3, 4), shape2 = runif(1, 2, 7)) +
    rt(n_grid, df = 5) / 10
)


# fds creates "functional data"-objects, see ?fds and ?fboxplot
x_fds <- fds(x = t_grid, y = x)

layout(t(1:2))
matplot(t_grid, x, lty = 1, col = rgb(0, 0, 0, .2), type = "l", lwd = 1.5)
fboxplot(x_fds)



# a) Lokalisieren Sie wo im Code der Fehler auftritt (also: *Auslöser* des
# Fehlers), ermitteln Sie die *Ursache* des Fehlers (nicht das selbe!). Was
# müssten Sie im obigen Code-Snippet ändern, damit der Fehler nicht mehr
# auftritt? Benutzen Sie den interaktiven Debugger und die anderen
# Debugging-Werkzeige die Sie kennen um diese Aufgabe zu lösen.

