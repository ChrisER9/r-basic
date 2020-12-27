#Esta linea no funciona, por ahora ...
#lm(y-x)


require(graphics)

## Annette Dobson (1990) "An Introduction to Generalized Linear Models".
## Page 9: Plant Weight Data.
ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
trt <- c(4.81,4.17,4.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
group <- gl(2, 10, 20, labels = c("Ctl","Trt"))
weight <- c(ctl, trt)
lm.D9 <- lm(weight ~ group)
lm.D90 <- lm(weight ~ group - 1) # omitting intercept

anova(lm.D9)
summary(lm.D90)

opar <- par(mfrow = c(2,2), oma = c(0, 0, 1.1, 0))
plot(lm.D9, las = 1)      # Residuals, Fitted, ...
par(opar)

### less simple examples in "See Also" above

install.packages("tidyverse",dep = TRUE)

library(tidyverse)
install.packages("magic", dep=TRUE)
library(magic)
install.packages("abind", dep=TRUE)
library(magic)
help(abind)
install.packages("abind")
library(abind)
library(magic)

magic(6)
install.packages("eia", dep = TRUE)

3+5

2%%3+5

2%%3

2^-4
725%%7
725%/%7

pi
2*pi
3^pi
pi^2
-Inf
2*Inf
NaN
5/0

2^50
2^(-15)

c(2^30, 2^(-15), 1, 2, 3/2)

c(2^-5)
2^-5

sqrt(2.34)
exp(1)
log(exp(3))
log(pi)
abs(-123) #Absoluto de un numero
factorial(20) #Factorial de 20 = 20!
choose(5, 3) #Combinatoria de 5 en 3
6^log(4,6)
choose(3,5)

asin(1/2)

cos(pi/3)

tan(pi)
tan(pi/2)

pi*asin(1/2)

asin(1/2) * 180/pi

sin(pi/2)

#print(x,n) Muestra las n cifras del numero x
#round(x,n) Redondea a n cifras significativas un resultado o vector númerico x
#floor(x)   [x], parte entera por defecto de x 
#ceiling(x) [x], parte entera por exceso de x
#trunc(x)   Parte entera de x, eliminando la parte decimal

print(sqrt(2), 10)

round(sqrt(2), 3)

floor(sqrt(2))

ceiling(sqrt(2))

trunc(sqrt(2))

sqrt(2)^2-2  #Se acumulan los decimales, tener cuidado!
print(2^50, 15)
print(2^50, 2)
print(pi, 20)

round(sqrt(2), 4)^2
round(1.15, 1)
round(1.25, 1)
round(1.35, 1)
round(sqrt(2), 0)
round(sqrt(2))

round(sqrt(2), digits=5) #Hay que definir cada variable
round(digits=5, sqrt(2)) #Hay que definir cada variable

log(32, base=2) #Hay que definir cada variable
log(base=2, 32) #Hay que definir cada variable

x = pi^(2)/2 #Guardando una variable
x
y <- cos(pi/4) #Guardando una variable
y
sin(pi/4) + cos(pi/4) -> z #Guardando una variable
edad <- 30
nombre = "Chris"
HOLA = 1
hola = 5
pi.4=pi*4
pi.4
x=2
x=x^2

x = sqrt(x) #Redefiniendo una variable del mismo valor

#Explicacion de como ingresar las propias variables

#Funcion 1:  f(x) = x^3 - (3^x) * sen(x)
#f = function(variable o variables) {funcion}

f = function(x){
  x^3 - (3^x) * sin(x)
  }

f(4) #4^3 - (3^4) * (sin(4))

f(5)
f(pi/2)

suma1 <- function(t){
  t+1
}
suma1(6)
suma1(-5)

product <- function(x,y){
  x*y
}
product(5,7)

g <- function(x,y,z){
  exp(x^2 + y^2) * sin(z)
}
g(1,2,3)
g(1,-1,pi)

suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}
suma5(3)
ls() #Para enlistar todas las variables creadas
#rm(funcion) sirve para quitar alguna variable o funcion
rm(ctl) #Para borrar alguna variable creada

ls()

#rm(list = ls()) Sirve para borrar de una toda la lista de funciones o variables 

paste(1,2,3, sep = "/" )
sprintf("%g", 1)
sprintf("%f", 1)
sprintf("%x", 1)
sprintf("%X", 1)
sprintf("%i",1)
sprintf("%.3f",pi)
pi
sprintf("%.3f - %.3f", 8,2)
paste(sprintf("%.3f - %.3f =", 8,2), 8-2)
sprintf("%5.0f", 2.1416)
sprintf("%05.0f", 2.1416)
sprintf("%0.9g", pi)
sprintf("%0.10g", pi)
sprintf("%0.10f", pi)

## be careful with the format: most things in R are floats
## only integer-valued reals get coerced to integer.

#sprintf("%s is %f feet tall\n", "Sven", 7.1)      # OK
#try(sprintf("%s is %i feet tall\n", "Sven", 7.1)) # not OK
#sprintf("%s is %i feet tall\n", "Sven", 7  )  # OK

## use a literal % :

#sprintf("%.0f%% said yes (out of a sample of size %.0f)", 66.666, 3)

## various formats of pi :

#sprintf("%f", pi)
#sprintf("%.3f", pi)
#sprintf("%1.0f", pi)
#sprintf("%5.1f", pi)
#sprintf("%05.1f", pi)
#sprintf("%+f", pi)
#sprintf("% f", pi)
#sprintf("%-10f", pi) # left justified
#sprintf("%e", pi)
#sprintf("%E", pi)
#sprintf("%g", pi)
#sprintf("%g",   1e6 * pi) # -> exponential
#sprintf("%.9g", 1e6 * pi) # -> "fixed"
#sprintf("%G", 1e-6 * pi)

## no truncation:
#sprintf("%1.f", 101)

## re-use one argument three times, show difference between %x and %X
#xx <- sprintf("%1$d %1$x %1$X", 0:15)
#xx <- matrix(xx, dimnames = list(rep("", 16), "%d%x%X"))
#noquote(format(xx, justify = "right"))

## More sophisticated:

#sprintf("min 10-char string '%10s'",
        c("a", "ABC", "and an even longer one"))

## Platform-dependent bad example from qdapTools 1.0.0:
## may pad with spaces or zeroes.
#sprintf("%09s", month.name)

#n <- 1:18
#sprintf(paste0("e with %2d digits = %.", n, "g"), n, exp(1))

## Using arguments out of order
#sprintf("second %2$1.0f, first %1$5.2f, third %3$1.0f", pi, 2, 3)

## Using asterisk for width or precision
#sprintf("precision %.*f, width '%*.3f'", 3, pi, 8, pi)

## Asterisk and argument re-use, 'e' example reiterated:
#sprintf("e with %1$2d digits = %2$.*1$g", n, exp(1))

## re-cycle arguments
#sprintf("%s %d", "test", 1:3)

## binary output showing rounding/representation errors
#x <- seq(0, 1.0, 0.1); y <- c(0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1)
#cbind(x, sprintf("%a", x), sprintf("%a", y))

opBasic = function(a,b){
  print("Suma")
  print(a+b)
  print("Resta")
  print(paste(sprintf("%i - %i= ",a,b), a-b))
  print(paste(sprintf("%i - %i= ",b,a), b-a))
  print("Producto")
  print(paste(sprintf("%i * %i= ", a,b),a*b))
  print("Cociente de la division entera")
  print(paste(sprintf("%i : %i= "),a,b), a%/%b)
  print("con resto", a%%b)
  print(paste(sprintf("%i : %i= "), b,a), b%/%a)
  print("con resto", b%%a)
}

opBasi(25,12)
opBasi = function(a,b){
  print("Suma")
  print(a+b)
  print("Resta")
  print(paste(sprintf("%i - %i= ",a,b), a-b))
  print(paste(sprintf("%i - %i= ",b,a), b-a))
  print("Producto")
  print(paste(sprintf("%i * %i= ", a,b),a*b))
  print("Cociente de la division entera")
  print(paste(sprintf("%i : %i= ",a,b), a%/%b))
  print(paste("con resto", a%%b))
  print(paste(sprintf("%i : %i= ",b,a), b%/%a))
  print(paste("con resto", b%%a))
  }
opBasi(13,4)

4%%13

#Trabajar con numeros complejos
#a+bi  Numero complejo
#complex(real= ,imaginary= ) Forma binomica
#complex(modulus= , argumnet= ) Forma polar

class(3+2i)
(3+2i)*5
(3+2i)*(-1+3i)
(3+2i)/(-1+3i)

#pi+sqrt(2)i es un error por lo que se usara
complex(real = pi,imaginary = sqrt(2)) -> z1
z1

#Raiz cuadrada de un numero negativo
sqrt(as.complex(-5))

#Operaciones con numeros complejos
sqrt(3+2i)  # z^2 = 3+21i  La raiz cuadrada devuelve de las dos soluciones 
#Re(z)>0, para obtener la otra, hay que multiplicarlo por -1

exp(3+2i)
sin(3+2i)
cos(3+2i)

# Modulo = sqrt(Re(z)^2 + Im(z)^2)
Mod(z1)
#Argumento = arctan(Im(z)/Re(z))
# = arcos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# va de (-pi, pi)

Arg(-1 + 0i)
Arg(-1-2i)

#Conjugada = Re(z) - Im(z)i
Conj(z1)

#Parte Real y parte imaginaria
Re(z1)
Im(z1)

### z = Mod(z)*(cos(Arg(z)) + sin(Arg(z))i)
complex(modulus = 2, argument = pi/2) -> z2
z2
Mod(z2)
Arg(z2)
pi/2
