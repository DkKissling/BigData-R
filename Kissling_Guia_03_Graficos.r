
# Ejercicio 1)

```R
puntuaciones_ejercicio_1 = c(15,20,15,18,22,13,13,16,15,19,18,15,16,20,16,15,18,16,14,13)
hist(puntuaciones_ejercicio_1, xlab = "Puntuaciones", ylab = "Frecuencia", main="Histograma de puntuaciones", col = "lightblue")
lines(table(puntuaciones_ejercicio_1),type="overplotted", col="yellow")
dev.off()
```

# Ejercicio 2)

```R
valoraciones_ejercicio_2 = c(3,3,4,3,4,3,1,3,4,3,3,3,2,1,3,3,3,2,3,2,2,3,3,3,2,2,2,2,2,3,2,1,1,1,2,2,4,1)
hist(valoraciones_ejercicio_2, xlab = "Valoraciones", ylab = "Frecuencia", main = "Histograma valoraciones de hoteles", col = "white")
lines(table(valoraciones_ejercicio_2),type="overplotted", col="red")
dev.off()
```

# Ejercicio 3)

```R
calificacionesMat_ejercicio_3 = c(5,2,4,9,7,4,5,6,5,7,7,5,5,2,10,5,6,5,4,5,8,8,4,0,8,4,8,6,6,3,6,7,6,6,7,6,7,3,5,6,9,6,1,4,6,3,5,5,6,7)
hist(calificacionesMat_ejercicio_3, xlab = "Calificacion", ylab = "Frecuencia", main = "Histograma de calificaciones matemáticas", col = "orange")
lines(table(calificacionesMat_ejercicio_3),type="overplotted", col="grey")
dev.off()
```

# Ejercicio 4)

```R
pesosTotales_ejercicio_4 = c(p1, p2, p3, p4, p5, p6, p7)
hist(pesosTotales_ejercicio_4, xlab = "Pesos", ylab = "Frecuencia", main = "Histograma de pesaje empleados", col = "yellow") 
lines(table(pesosTotales_ejercicio_4),type="overplotted", col="blue")
dev.off()
```

# Ejercicio 5)

```R
calificacionesFisica_ejercicio_5 <- c(3, 15, 24, 28, 33, 35, 38, 42, 23, 38, 36, 34, 29, 25, 17, 7, 34, 36, 39, 44, 31, 26, 20, 11, 13, 22, 27, 47, 39, 37, 34, 32, 35, 28, 38, 41, 48, 15, 32, 13)
hist(calificacionesFisica_ejercicio_5, xlab = "Notas", ylab = "Frecuencia", main = "Histograma de puntajes Física", col = "pink")
lines(table(calificacionesFisica_ejercicio_5),type="overplotted", col="brown")
dev.off()
```