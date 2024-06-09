options(echo=FALSE)

moda <- function(x) {                          #creamos una función para calcular la moda
  ux <- unique(x)
  ux [which.max(tabulate(match(x, ux)))]
}

media <- function(x) {
  media <- mean(x)
  return(media)
}

mediaGeometrica <- function(x) {
  producto <- prod(x)
  longitud <- length(x)
  mediaGeometrica <- producto^(1/longitud)
  return(mediaGeometrica)
}

mediaCuadratica <- function(x) {
  mediaCuadratica <- sqrt(mean(x^2))
  return(mediaCuadratica)
}

mediaArmonica <- function(x) {
  n <- length(x)
  if (n == 0) {
    stop("Vacía.")
  }
  inv <- 1 / x
  mediaArmonica <- n / sum(inv)
  return(mediaArmonica)
}

mediaPonderada <- function(x, y) {
  n <- length(x)
  if (n == 0 || length(y) != n) {
    stop("Datos erroneos.")
  }
  numerador <- sum(x * y)
  denominador <- sum(y)
  mediaPonderada <- numerador / denominador
  return(mediaPonderada)
}

mediana <- function (x){
  med<- median(x)
  return(med)
}

#ejercicio 3

eje_a <- c(4, 6, 8)
eje_b <- c(14, 16, 18)
eje_c <- c(100, 120, 180, 200)

media(eje_a)
media(eje_b)
media(eje_c)

#ejercicio 4

eje_4_a<-c(0,2,3,4,3,1,4,3,3,4,1,3)
eje_4_b<-c(4,1,3,0,0,3,2,2,1,3,4,1)
media(eje_4_a)
mediaGeometrica(eje_4_a)
mediaCuadratica(eje_4_a)
mediaArmonica(eje_4_a)
mediaPonderada(eje_4_a,eje_4_a)
#--------------------------------------------------------------------
media(eje_4_b)
mediaGeometrica(eje_4_b)
mediaCuadratica(eje_4_b)
mediaArmonica(eje_4_b)
mediaPonderada(eje_4_b,eje_4_b)

#ejercicio5
eje_5_a<-c(2.4,3,1.1,4,3.5,0.7,0,2.8,3.8,0.2,2.8,1.9)
eje_5_b<-c(0.6,3.8,3.1,4,2.8,0.2,0.4,3.1,1.5,1.9,1.8,3.1)

media(eje_5_a)
#-------------------------------------------------------------------------
media(eje_5_b)

#ejercicio6

eje_6_a<- c(2,4,3,0,2,1,1,2,3,3,3,1)
eje_6_b<-c(1,1,0,1,4,0,1,3,4,0,1,2)

moda(eje_6_a)
moda(eje_6_b)

#ejercicio7y8

eje_7_a<-c(25,15,28,29,25,26,21,26)
eje_8_a<-c(15,16,19,15,14,16,20,15,17)
media(eje_7_a)
mediana(eje_7_a)
moda(eje_7_a)

media(eje_8_a)
mediana(eje_8_a)
moda(eje_8_a)

#Ejercicio9
eje_9_a<-c(69,73,65,70,71,74,65,69,60,62)
media(eje_9_a)
mediana(eje_9_a)
moda(eje_9_a)

#Ejercicio10

eje_10_a<-c(3,3,4,1,1,2,2,2,5,1,4,5,1,5,3,5,1,4,1,2,2,1,2,3,5)
media(eje_10_a)
mediana(eje_10_a)
moda(eje_10_a)

#ejercicio11

sueldos <- c(rep(400, 600), rep(600, 500), rep(2200, 100), rep(100000, 5))
mediana(sueldos)
media(sueldos)
moda_sueldos <- as.numeric(names(table(sueldos)[table(sueldos) == max(table(sueldos))]))
moda_sueldos
