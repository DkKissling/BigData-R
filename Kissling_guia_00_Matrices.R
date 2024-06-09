#Ejercicio3
#a.
Produccion = matrix(c(400, 300, 200, 100, 50, 30), nrow=2, ncol=3)
colnames(Produccion) = c("N", "L", "S")
rownames(Produccion) = c("A", "B")
Produccion

Hs = matrix(c(25, 30, 33, 1, 1.2, 1.3), nrow=3, ncol=2)
colnames(Hs) = c("Taller", "Admin")
rownames(Hs) = c("N", "L", "S")
Hs

#b.
MatrisFinal = Produccion %*% Hs
MatrisFinal


#ejercicio4

lingotes = matrix(c(20, 30, 40, 30, 40, 50, 40, 50, 90), nrow=3, ncol=3)
colnames(lingotes) = c("oro", "plata", "cobre")
rownames(lingotes) = c("primero", "segundo", "tercero")
lingotes

Resultado_deseado <- c(34, 46, 67)
Lingotes_Pesos <- solve(lingotes, Resultado_deseado)
Lingotes_Pesos


#ejercicio5

# Paso 1: Definir las variables
x <- 0  # Edad del padre en el momento del nacimiento de los hijos
y <- 0  # Edad del primer hijo en el momento actual
z <- 0  # Edad del segundo hijo en el momento actual

# Paso 2: Plantear las ecuaciones
equations <- matrix(c(2, 1, 1, -1, -3, 1, 1, 1, 1), ncol = 3, byrow = TRUE)
constants <- c(0, 0, -150)

# Paso 3: Resolver el sistema de ecuaciones
solution <- solve(equations, constants)

# Obtener los valores de las variables
x <- solution[1]
y <- solution[2]
z <- solution[3]

# Mostrar la solución
if (is.finite(x) && is.finite(y) && is.finite(z)) {
  cat("El padre tenía", x, "años en el momento del nacimiento de sus hijos.")
} else {
  cat("No se pudo determinar la solución.")
}

