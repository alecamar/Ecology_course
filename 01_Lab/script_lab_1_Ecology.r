######################################################################################################################################
######################################################################################################################################
#### 			Lab # 1 Ecology - Alexandre Camargo Martensen
######################################################################################################################################
######################################################################################################################################
require(knitr)
setwd("C:/Users/Alexandre/Documents/Ale/Dr/PHD/Courses/EEB1320 Ecology/Labs/01_Lab")

2+2

a=2+2

a=3*(4+
5)

x=5
y=2
z1=x*y
z2=x/y
z3=x^y
z2

z3

z3=2*x^y

A=3
C=(A+2*sqrt(A))/(A+5*sqrt(A)); C

C=A+2*sqrt(A)/A+5*sqrt(A)

### Exercise 2.1

# Ex.1
num.1<-(2^7)/((2^7)-1)
num.2<-(1-(1/(2^7)))^-1
if (num.1 == num.2) "equal"
if (num.1 != num.2) "different"

# Ex.2
n<-0.2
1+n
1+n+(n^2)/2
1+n+(n^2)/2+(n^3)/6
1+n+(n^2)/2+(n^3)/6+(n^4)/8
1+n+(n^2)/2+(n^3)/6+(n^4)/8+(n^5)/10

exp(1)^n


### What is the point of this exercise?
# to better understand the exp funcion in R

# Ex. 3
bell<-function(x) {((1/sqrt(2*pi))*exp(1)^((-x^2)/2))}
bell(1)
bell(2)

if (bell(1) == dnorm(1)) "correct"
if (bell(1) != dnorm(1)) "incorrect"

if (bell(2) == dnorm(2)) "correct"
if (bell(2) != dnorm(2)) "incorrect"

### Exercise 3.1
apropos("sin")
help.search("sin")
help("sin")
?sin

Light=c(20,20,20,20,21,24,44,60,90,94,101)
rmax=c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

plot(Light,rmax)

fit = lm(rmax~Light)

summary(fit)

abline(fit)	

coef(fit)

names(fit) #or
attributes(fit)

fit$coefficients
plot(fit$residuals)
plot(fit$fitted.values)
fit$model

getwd()
setwd("C:/Users/Alexandre/Documents/Ale/Dr/PHD/Courses/EEB1320 Ecology/Labs/01_Lab")

source("Intro1.R")

X=read.table("ChlorellaGrowth.txt",header=TRUE, sep=",")
X
Light=X[,1]
rmax=X[,2] 

## Exercise 5.1

source("Intro2.R")

source("Intro3.R")
# This is the answer for Exercise 5.1


## Exercise 5.2
source("Intro2.R")
plot(fit)

?plot.lm

## Exercise 5.3

#Create a plot of growth rate versus light intensity with the x-axis running
#from 0 to 120 and the y-axis running from 1 to 4.

plot(Light, rmax, xlim=c(0, 120), ylim=c(1,4))

## Exercise 5.4
#Intro2.R with a different name
source("Intro4.R")

## Exercise 5.5
?par

x<-3:8
x
y = 5*x + 3
y
plot(x, y, type="l", lty=1, col="red")
plot(x, y, type="l", lty=2, col="blue")
plot(x, y, type="l", lty=3, col="brown")
plot(x, y, type="l", lty=4, col="black")


## Exercise 5.6
png("Fig_ex.png", bg="white")
par(mfcol=c(2,2))
plot(x, y,col='blue')
abline(h=30, col="green")
abline(v=5, col="purple")
title("points blue with abline h=30, v=5")

plot(x, y,type="n")
title("plot n")

plot(x, y,type="b", col=c("red", "blue"))
title("type b = both points and lines with two colors")

plot(x, y,type="p", col="blue")
lines(x, y, col="red")
title("points in blue with lines in red")
dev.off()

install.packages("plotrix")

install.packages(c("ellipse","plotrix"))

install.packages("plotrix",repos=NULL)

install.packages("emdbook")

library(emdbook)

get.emdbook.packages()

initialsize=c(1,3,5,7,9,11)

(finalsize=initialsize+1)

(newsize=sqrt(initialsize))

initialsize^2

1:8

## Exercise 8.1

(v1<-seq(1, 13, by=4))
(v2<-seq(1, 5, by=0.2))

rep(3,5)

rep(1:3,3)

rep(1:3,each=3)

rep( c(3,4),c(2,5) )

z=c(1,3,5,7,9,11)
z[3]

z.1<-seq(1, 11, by=2)
z.1
z

z[2:5]

v=z[seq(1,5,2)]
v

z[c(1,2,5)]

z[1]=12
z

z[c(1,3,5)]=c(22,33,44)

z[1,3, 5]=c(22,33,44)
# z is a vector, and thus their is no 3 col, for example

### Exercise 8.2

z[c(2,1,3)]


### Exercise 8.3

x<-1:10
y <- ((x-1)/(x+1))
y
plot(y, x, type="b")

### Exercise 8.4
n.1<-1:10
r.1<-0.5
G.1<-r.1^n.1
G.1
sum(G.1)
1/(1-r.1)

n.2<-1:50
r.2<-0.5
G.2<-r.2^n.2
G.2
sum(G.2)


x = 1.999999
x

x-2
x=1.9999999999999999
x
x-2

### section 8.3 Logical Operators

a=1
b=3
c=a<b
d=(a>b)
c
d
x=1:5
(b=(x<=3))

a = 1:3
b = 2:4
a
b
a==b

a=b
a==b

a=c(1,2,3,4)
b=c(1,1,5,5)
a
b
(a<b)& (a>3)
a<b

(a<b) | (a>3)

X=read.table("ChlorellaGrowth.txt",header=TRUE, sep=",")
Light=X[,1]
rmax=X[,2]
lowLight = Light[Light<50]
lowLightrmax = rmax[Light<50]
lowLight


lowLightrmax

###  Exercise 8.5

Light2 <- Light
rmax2=rmax

Light2 = Light2[Light2<50]
Light2

rmax2=rmax2[Light2<50]

### That will be wrong because you are subsetting a different object.
rmax2
rmax



rmax2[rmax2<2 | rmax>3]

Light[Light<50 & rmax <= 2.0]

rmax[Light<50 & rmax <= 2.0]

###  Exercise 8.6

set.seed(273)
ns<-runif(20)
mean(ns)
ns[ns<mean(ns)]
ns

###  Exercise 8.7

which(ns<mean(ns))

x = c(first=7,second=5,third=2)
names(x)

x["first"]

x[c("third","first")]

###  Exercise 8.8

nn<-runif(20)

# First option
ss<-seq(1, length(nn), 2)
nn
nn[ss]

# Second option
r<-rep(c("odd", "even"), length(nn)/2)
names(nn)<-r
nn[which(names(nn)=="odd")]

### Section 9.1 Creating matrices

(X=matrix(1:6,nrow=2,ncol=3))

(A=matrix(1:9,nrow=3,ncol=3,byrow=TRUE))

matrix(1,nrow=10,ncol=10)

###  Exercise 9.1

v<-rep(c(1, 2), 4)
(X=matrix(v,nrow=2,ncol=4))

###  Exercise 9.2

set.seed(273)
n<-rnorm(35, 1, 2)
(W=matrix(n,nrow=5,ncol=7))

diag(1,5)

diag(1:5,5)

diag(1:2,5)
# Didn't produce a warning for me, but I believe that since 5 is an odd number, and 1:2 is an even number, it will not fit until the diagonal

A=matrix(0,nrow=3,ncol=4)
data.entry(A)
A

## 9.2 Section

(C=cbind(1:3,4:6,5:7))

(D=rbind(1:3,4:6))


###  Exercise 9.3

rbind(C,D)
cbind(C,C)
cbind(C,D)
# The number of rows don't match

## 9.3 Section

A[2,2:3]

(B=A[2:3,1:2])

(first.row=A[1,])

(second.column=A[,2])

#(What does A[,] do?)
A[,] # select all columns and rows, the same of A[]

(A[1,1]=12)

(A[1,]=c(2,4,5, 6))

which(A==6,arr.ind=TRUE)

## 10.1 Section

L = list(A=x,B=y,C=c("a","b","c"))
L

L$A
L[["A"]]
L[[1]]


