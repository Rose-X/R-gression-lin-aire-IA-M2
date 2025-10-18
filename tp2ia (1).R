x <- c(2,4,16,10,26,17,28,20,28,26,36,26,54,40,50,76,46,48,92,85)
y <- c(4,7,8,9,10,11,11,12,12,13,14,15,15,16,17,18,19,20,24,25)
n <- length(x)
print(x)
#le cal de la moyennes
moyX <- mean(x)
print(moyX)
moyY <- mean(y)
print(moyY)

#la variance...........
var_x_echan <- var(x)
var_y_echan <- var(y)
print(var_x_echan)
print(var_y_echan)
var_x <- mean((x - moyX)^2)
print(var_x)
var_y <- mean((y - moyY)^2)
print(var_y)
#La régression L 
DadeXY <- lm(x ~ y)
print(DadeXY)
a <- coef(DadeXY)[2]
b <- coef(DadeXY)[1]
m2 <- 1/a
print(m2)
c2 <- -b/a
print(c2)
plot(x, y, xlab = "Distance(F),", ylab = "Vitesse", main = "Car")
abline(a = b,  b = a,  lwd=2, col="blue")
abline(a = c2, b = m2, lwd=2, lty=2, col="red") 
#langle
m1 <- a
print(m1)
angle1 <- atan( abs((m2 - m1)/(1 + m1*m2)) )
print(angle1)
anglepi <- angle1 * 180/pi
print(anglepi)

r <- cor(x,y)
print(r)












