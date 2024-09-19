#Codigo para problema 1

# para ejecutar la línea ctrl + ENTER

mis_datos <- mtcars # <- es el =

mis_datos[, 1] # quiero ver la columna 1 de esa base de datos
mis_datos$mpg # quiero ver la columna que se llama mpg
sort(mis_datos$qsec) # ordena de menor a mayor la columna qsec

qsec_intervalos <- cut(mis_datos$qsec, breaks = 4)
# en la anterior línea estamos dividiendo en 4 intervalos una recta desde el 
# menor qsec hasta el mayor qsec para que se imprima una lista, en el orden
# en el que aparecen los coches en la base de datos, el qsec de cada 
# coche en qué intervalo de la recta aparece

ni <- table(qsec_intervalos) # vector de frecuencias absolutas 
hist(mis_datos$qsec, breaks = 5) 
# en la anterior línea hacemos un histograma (gráfico de barras) de 
# para variables contínuas

mean(mis_datos$qsec) # para calcular la media de la columna qsec
median(mis_datos$drat) # para calcular la mediana
quantile(mis_datos$drat, 0.25) # para ver el primer cuartil (último número del 
# primer cuarto) 
quantile(mis_datos$drat) # para ver todos los quartiles
quantile(mis_datos$mpg, 0.18) # para cortar la lista al 18%, podemos utilizar
# quantile para cortar la lista al porcentaje que queramos

sum(table(qsec_intervalos)) # sumamos el vector de frecuencias absolutas para 
# saber el número total de datos 
fi <- ni/sum(ni) # vector de frecuencias relativas de cada intervalo
pie(fi) # grafico circular para fraccionarlo de acuerdo a las fi
Ni <- cumsum(ni) # frecuencia absoluta acumulada
Fi <- cumsum(fi) # frecuencia relativa acumulada
cbind(ni, fi, Ni, Fi) # tabla de frecuencias

# HASTA AHORA ERAN MEDIDAS DE CENTRALIDAD, A PARTIR DE AHORA VEREMOS 
# MEDIDAS DE DISPERSIÓN

q0.75 <- quantile(mis_datos$cyl, 0.75)
q0.25 <- quantile(mis_datos$cyl, 0.25)
IQR <- q0.75-q0.25
IQR(mis_datos$cyl) # rango interquartílico, como de ancho es la acumulación de 
# datos entre el primer y el tercer cuartil DISPERSIÓN ALREDEDOR DE LA MEDIANA
boxplot(mis_datos$cyl) # para graficarlo

sd(mis_datos$cyl) # desviación típica, DISPERSIÓN ALREDEDOR DE LA MEDIA
var(mis_datos$qsec) # varianza



