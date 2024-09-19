#Codigo para problema 3

X <- c(-8,5,2,-8,9,5,2,-3,1,-1,4,-4,9,3,-9,7,0,-7,8,-4,1,7,-6,4,5,-9,-2,-8,5,-5)
# para definir un vector usamos la función c de concatenación
sum(X)

# LA PRIMERA POSICIÓN DE UN VECTOR ES 1

Y <- X[-c(21,2,26)] # quitamos (con el negativo) las posiciones que le digo 
# en el vector de índices c
Y

sum(exp(X))-sum(exp(Y)) # sumamos los comonentes del vector exp(X), es decir, 
# de todos los componentes del vector X exponenciados de e
Y[19] > Y[24] # boleano
