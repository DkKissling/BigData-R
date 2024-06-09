#GUIA METODO SIMPLEX EN R
library(boot)

# Ejercicio 01
aEje1 <- c(40, 60)
A1Eje1 <- rbind(c(2, 1), c(1, 1), c(1, 3))
b1Eje1 <- c(70, 40, 90)
solucionEje1 <- simplex(aEje1, A1Eje1, b1Eje1, maxi = TRUE)
cat("Ejercicio 01:\n")
cat("La x debe valer: ", solucionEje1$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje1$soln[2], sep = "\n")
cat("x y y en la función objetivo nos da como resultado: ", solucionEje1$value, sep = "\n\n")

# Ejercicio 02
aEje2 <- c(3, 2)
A1Eje2 <- rbind(c(2, 1), c(2, 3), c(3, 1))
b1Eje2 <- c(18, 42, 24)
solucionEje2 <- simplex(aEje2, A1Eje2, b1Eje2, maxi = TRUE)
cat("Ejercicio 02:\n")
cat("La x debe valer: ", solucionEje2$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje2$soln[2], sep = "\n")
cat("x y y en la función objetivo nos da como resultado: ", solucionEje2$value, sep = "\n\n")

# Ejercicio 03
aEje3 <- c(1.20, 0.80)
A2Eje3 <- rbind(c(2, 2), c(4, 1))
b2Eje3 <- c(16, 20)
solucionEje3 <- simplex(a = aEje3, A1 = c(0, 0), b1 = c(0), A2 = A2Eje3, b2 = b2Eje3, maxi = FALSE)
cat("Ejercicio 03:\n")
cat("La x1 debe valer: ", solucionEje3$soln[1], sep = "\n")
cat("La x2 debe valer: ", solucionEje3$soln[2], sep = "\n")
cat("x1 y x2 en la función objetivo nos da como resultado: ", solucionEje3$value, sep = "\n\n")

# Ejercicio 04
aEje4 <- c(50, 60)
A2Eje4 <- rbind(c(100, 200), c(200, 50))
b2Eje4 <- c(3000, 2500)
solucionEje4 <- simplex(a = aEje4, A1 = c(0, 0), b1 = c(0), A2 = A2Eje4, b2 = b2Eje4, maxi = FALSE)
cat("Ejercicio 04:\n")
cat("La x debe valer: ", solucionEje4$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje4$soln[2], sep = "\n")
cat("x y y en la función objetivo nos da como resultado: ", solucionEje4$value, sep = "\n\n")

# Ejercicio 05
aEje5 <- c(600000, 300000)
A2Eje5 <- rbind(c(10, 4), c(20, 30))
b2Eje5 <- c(100, 420)
solucionEje5 <- simplex(a = aEje5, A1 = c(0, 0), b1 = c(0), A2 = A2Eje5, b2 = b2Eje5, maxi = FALSE)
cat("Ejercicio 05:\n")
cat("La x debe valer: ", solucionEje5$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje5$soln[2], sep = "\n")
cat("x y y en la función objetivo nos da como resultado: ", solucionEje5$value, sep = "\n\n")

# Ejercicio 06
aEje6 <- c(0.75, 0.5)
A1Eje6 <- rbind(c(3, 5), c(2, 1))
b1Eje6 <- c(36800, 2400)
solucionEje6 <- simplex(aEje6, A1Eje6, b1Eje6, maxi = TRUE)
cat("Ejercicio 06:\n")
cat("La x debe valer: ", solucionEje6$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje6$soln[2], sep = "\n")
cat("x y y en la función objetivo nos da como resultado: ", solucionEje6$value, sep = "\n\n")

# Ejercicio 07
aEje7 <- c(21, 24, 36)
A1Eje7 <- rbind(c(1, 1, 1), c(1, 1, 2), c(2, 3, 5))
b1Eje7 <- c(400, 500, 1450)
solucionEje7 <- simplex(aEje7, A1Eje7, b1Eje7, maxi = TRUE)
cat("Ejercicio 07:\n")
cat("La x debe valer: ", solucionEje7$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje7$soln[2], sep = "\n")
cat("La z debe valer: ", solucionEje7$soln[3], sep = "\n")
cat("x, y y z en la función objetivo nos da como resultado: ", solucionEje7$value, sep = "\n\n")

# EJERCICIO 08
aEje8 <- c(2, 1)
A1Eje8 <- rbind(c(1, 1), c(1, 0))
b1Eje8 <- c(10, 4)
solucionEje8 <- simplex(aEje8, A1Eje8, b1Eje8, maxi = TRUE)
cat("Ejercicio 08:\n")
cat("La x debe valer: ", solucionEje8$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje8$soln[2], sep = "\n")
cat("x y y en la func objetivo nos da como resultado: ", solucionEje8$value, sep = "\n\n")

# EJERCICIO 09
aEje9 <- c(6, 7.5)
A1Eje9 <- rbind(c(10, 12), c(1, 0), c(0, 1))
A2Eje9 <- rbind(c(1, 0))
b1Eje9 <- c(2500, 200, 45)
b2Eje9 <- c(150)
solucionEje9 <- simplex(aEje9, A1Eje9, b1Eje9, A2Eje9, b2Eje9, maxi = TRUE)
cat("Ejercicio 09:\n")
cat("La x debe valer: ", solucionEje9$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje9$soln[2], sep = "\n")
cat("x y y en la func objetivo nos da como resultado: ", solucionEje9$value, sep = "\n\n")

# EJERCICIO 10
aEje10 <- c(5, 7)
A1Eje10 <- rbind(c(1, 1))
A2Eje10 <- rbind(c(-2, 1), c(1, 0))
b1Eje10 <- c(500)
b2Eje10 <- c(0, 100)
solucionEje10 <- simplex(aEje10, A1Eje10, b1Eje10, A2Eje10, b2Eje10, maxi = TRUE)
cat("Ejercicio 10:\n")
cat("La x debe valer: ", solucionEje10$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje10$soln[2], sep = "\n")
cat("x y y en la func objetivo nos da como resultado: ", solucionEje10$value, sep = "\n\n")

# EJERCICIO 11
aEje11 <- c(40, 24, 36, 23)
A1Eje11 <- rbind(c(2, 1, 2.5, 5), c(1, 3, 2.5, 0), c(10, 5, 2, 12), c(1, 0, 0, 0), c(0, 0, 1, 0))
A2Eje11 <- rbind(c(0, 0, 0, 1))
b1Eje11 <- c(120, 160, 1000, 20, 16)
b2Eje11 <- c(10)
solucionEje11 <- simplex(aEje11, A1Eje11, b1Eje11, A2Eje11, b2Eje11, maxi = TRUE)
cat("Ejercicio 11:\n")
cat("La x debe valer: ", solucionEje11$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje11$soln[2], sep = "\n")
cat("La z debe valer: ", solucionEje11$soln[3], sep = "\n")
cat("La w debe valer: ", solucionEje11$soln[4], sep = "\n")
cat("x, y, z y w en la func objetivo nos da como resultado: ", solucionEje11$value, sep = "\n\n")

# EJERCICIO 12
aEje12 <- c(20000, 20000, 20000, 20000)
A1Eje12 <- rbind(c(2, 1, 1, 2), c(2, 2, 1, 0), c(0, 0, 2, 2), c(0, 0, 0, 1))
b1Eje12 <- c(??, ??, ??, ??)
solucionEje12 <- simplex(aEje12, A1Eje12, b1Eje12, maxi = TRUE)
cat("Ejercicio 12:\n")
cat("La x debe valer: ", solucionEje12$soln[1], sep = "\n")
cat("La y debe valer: ", solucionEje12$soln[2], sep = "\n")
cat("La z debe valer: ", solucionEje12$soln[3], sep = "\n")
cat("La w debe valer: ", solucionEje12$soln[4], sep = "\n")
cat("x, y, z y w en la func objetivo nos da como resultado: ", solucionEje12$value, sep = "\n")

