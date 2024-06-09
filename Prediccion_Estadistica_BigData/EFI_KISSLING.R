# Lee los datos de co2 por persona desde un archivo CSV
co2persona <- read.csv("/home/dkkissling/Documentos/itec/Matematica_aplicada/bigdata/co2_porPersona.csv")

# Filtra los datos para el país "Argentina"
pais_elegido <- co2persona[co2persona$country == "Argentina", ]

# Excluye la columna "country"
datos_numericos <- pais_elegido[, -1]

# Selecciona las columnas correspondientes a los años desde 1990 hasta 2016
columnas_deseadas <- colnames(datos_numericos)[colnames(datos_numericos) >= "X1990" & colnames(datos_numericos) <= "X2016"]

# Crea un nuevo conjunto de datos con las columnas deseadas
datos_acortados <- datos_numericos[, columnas_deseadas]

# Convierte los datos en un vector numérico
datos_vector <- as.vector(as.matrix(datos_acortados))

anios <- 1990:2016

par(mar = c(2, 2, 1, 1))  # Ajusta los valores de los márgenes según tus preferencias

# Crea el gráfico con marcas personalizadas en el eje X
plot(anios, datos_vector, type = "l", xlab = "Años", ylab = "Datos Acortados")

# Ajusta un modelo de regresión lineal
regresion <- lm(datos_vector ~ anios)

# Agrega una línea de regresión en rojo
abline(regresion, col = "red")

# Crea una secuencia de años que incluye 2017 y 2018
anios_futuros <- c(2017, 2018)

# Realiza la predicción solo para 2017 y 2018 utilizando el modelo de regresión
predicciones <- predict(regresion, newdata = data.frame(anios = anios_futuros))

# Crea un nuevo vector de datos que incluye las predicciones para 2017 y 2018
datos_con_predicciones <- c(datos_vector, predicciones)

# Crea un nuevo vector de años que incluye 2017 y 2018
anios_con_predicciones <- c(anios, 2017, 2018)

# Crea el gráfico con los datos y las predicciones
plot(anios_con_predicciones, datos_con_predicciones, type = "l", xlab = "Años", ylab = "Datos Acortados", xaxt='n')

# Ajusta el eje x para mostrar solo de dos en dos
axis(1, at = anios_con_predicciones[seq(1, length(anios_con_predicciones), by = 2)], labels = anios_con_predicciones[seq(1, length(anios_con_predicciones), by = 2)])

abline(lm(datos_con_predicciones ~ anios_con_predicciones), col = "red")

# Imprime los valores de predicción para 2017 y 2018
cat("Predicción para 2017:", predicciones[1], "\n")
cat("Predicción para 2018:", predicciones[2], "\n")

