#Fijamos una semilla
set.seed(123)

#definimos el numero de ensayos
n_ensayos <- 10000 

#simulamos el lanzamiento de la moneda 10,000 veces
# digamos que 1:cara, 0:cruz
moneda <- sample(c(0,1), n_ensayos, replace = TRUE)

# Contamos cuántas caras salieron
sum_sim <- sum(moneda == 1)

#Probabilidad frecuentista de cara
freq_cara <- cumsum(moneda) / (1:n_ensayos)

# Veamos como es que se van acercado estas simulaciones 
# en distintos tamaños de muestra y los guardamos para graficarlos
simulaciones <- c(
  mean(moneda[1:10]), #primeros 10
  mean(moneda[1:100]), #primeros 100
  mean(moneda[1:1000]), #primeros 1000
  mean(moneda[1:10000]) #todos: 10000 ensayos
)

#Eje X (tamaño de muestra)
x <- c(10, 100, 1000, 10000)

#Graficamos
plot(freq_cara,
     type = "l",
     ylim = c(0,1),
     col = "orange",
     lwd = 2,
     xlab = "Lanzamiento",
     ylab = "Frecuencia relativa",
     main = "Regularidad Estadística")

abline(h = 0.5, lty = 2, col="blue")

# Hacemos un acercamiento a los primeros 1000 resultados 
# para ver como se comporta
plot(freq_cara,
     type= "l",
     ylim = c(0,1),
     xlim = c(0,500),
     col = "orange",
     lwd = 2,
     xlab = "Lanzamiento",
     ylab = "Frecuencia relativa",
     main = "Regularidad Estadística primeros 500 lanzamientos")

abline(h = 0.5, lty = 2, col="blue")

