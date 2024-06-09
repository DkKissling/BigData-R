mediana <- function (x){
  med <- median(x)
  return(med)
}

moda <- function(datos) {
  tabla_frecuencias <- table(datos)
  moda <- as.numeric(names(tabla_frecuencias)[tabla_frecuencias == max(tabla_frecuencias)])
  return(moda)
}

media <- function(datos) {
  media <- mean(datos)
  return(media)
}

desviacion_media <- function(datos) {
  n <- length(datos)
  
  if (n == 0) {
    stop("La lista de datos está vacía.")
  }
  
  media <- mean(datos)
  desviacion_absoluta <- abs(datos - media)
  desviacion_media <- mean(desviacion_absoluta)
  
  return(desviacion_media)
}

rango <- function(x) {                          
  max(x) - min(x)
}

# Actividad 4)

datosAct4 <- c(28, 29, 28, 30, 30, 29, 30, 31, 29, 29, 30, 31, 31, 31, 32, 33, 34, 34, 35, 31, 31, 32, 32, 33, 33, 31, 32, 32, 33, 33, 34)

resultadoModaAct4 <- moda(datosAct4) 
resultadoMedianaAct4 <- mediana(datosAct4)
resultadoMediaAct4 <- media(datosAct4)
resultadoRangoAct4 <- rango(datosAct4)
resultadoDesvMediaAct4 <- desviacion_media(datosAct4)
resultadoVarianzaAct4 <- var(datosAct4)
resultadoDesvEstandarAct4 <- sd(datosAct4)

# Actividad 5)

datosAct5 <- c(69, 73, 65, 70, 71, 74, 65, 69, 60, 62)

resultadoRangoAct5 <- rango(datosAct5)
resultadoDesvMediaAct5 <- desviacion_media(datosAct5)
resultadoVarianzaAct5 <- var(datosAct5)
resultadoDesvEstandarAct5 <- sd(datosAct5)

# Actividad 6)

datosAct6 <- c(3, 3, 4, 1, 1, 2, 2, 2, 5, 1, 4, 5, 1, 5, 3, 5, 1, 4, 1, 2, 2, 1, 2, 3, 5)

resultadoDesvMediaAct6 <- desviacion_media(datosAct6)
resultadoDesvEstandarAct6 <- sd(datosAct6)
resultadoVarianzaAct6 <- var(datosAct6)

# Actividad 7)

datosAlturaAct7 <- c(172.5, 177.5, 182.5, 187.5, 192.5, 197.5)
datosJugadoresAct7 <- c(1, 3, 4, 8, 5, 2)

resultadoMediaAct7 <- sum(datosAlturaAct7 * datosJugadoresAct7) / sum(datosJugadoresAct7)
resultadoMedianaAct7 <- median(rep(datosAlturaAct7, datosJugadoresAct7)) 
resultadoVarianzaAct7 <- sum(datosJugadoresAct7 * (datosAlturaAct7 - resultadoMediaAct7)^2) / sum(datosJugadoresAct7)
resultadoDesvEstandarAct7 <- sqrt(resultadoVarianzaAct7)

# Actividad 8)

datosAct8 <- c(6, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 11)

resultadoMediaAct8 <- media(datosAct8)
resultadoModaAct8 <- moda(datosAct8)
resultadoMedianaAct8 <- mediana(datosAct8)

resultadoRangoAct8 <- rango(datosAct8)
resultadoDesvEstandarAct8 <- sd(datosAct8)
resultadoVarianzaAct8 <- var(datosAct8)

# Actividad 10)

ejeX_act10 <- c(1, 3, 2, 4, 5, 4)
ejeY_act10 <- c(1, 1, 3, 4, 6, 5)

coef_correlacion_act10 <- cor(ejeX_act10, ejeY_act10)

comment(coef_correlacion_act10) <- "El coeficiente de correlación (r) aproximado es 0.83. Como (r) es positivo y está cerca de 1, indica una correlación positiva fuerte entre los años de servicio (x) y el tiempo solicitado en horas (y) en la empresa seleccionada."

# Actividad 11)

nro_cigarrillos_act11 <- c(3, 5, 6, 15, 20, 40, 45)
indice_mortalidad_act11 <- c(0.2, 0.3, 0.3, 0.5, 0.7, 1.4, 1.5)

nro_cigarrillos_act11 <- as.numeric(gsub(",", ".", nro_cigarrillos_act11))
indice_mortalidad_act11 <- as.numeric(gsub(",", ".", indice_mortalidad_act11))

coef_correlacion_act11 <- cor(nro_cigarrillos_act11, indice_mortalidad_act11)
