#################################################################
#################################################################
###
###
###       Scripts for the Reading Assignment 01
###
###
#################################################################
#################################################################

###   The solution for a differential equation

X<-0.1
res<-X
for (i in 1:200)
{
  X1<-2* X *(1-X) + X
  X<-X1
  res<-c(res, X1)
}

plot(res, col="red")
lines(spline(res), col="green")


X<-0.1
res<-X
for (i in 1:200)
{
  X1<-2* X *(1-X) + X
  X<-X1
  res<-c(res, X1)
}

plot(res, col="red")
lines(spline(res), col="green")

#################################################################

###  Projecting the population size @ any timestep

# Nt = N0*exp(1)^(r*t)

r<-c(0.02, 0.01, 0, -0.02)  
j<-1
N0<-100
Ntot<-NULL
for (j in 1:4)
  {
  r1<-r[j]
  Nf<-N0
  for (t in 1:100)
    {
    Nt<-N0*exp(r1*t)
    Nf<-c(Nf, Nt)
    }
  Ntot<-cbind(Ntot, Nf)
  }

Ntot
plot(Ntot[,1])
plot(Ntot[,2], add=TRUE)
plot(Ntot[,3], add=TRUE)
plot(Ntot[,4], add=TRUE)

x<-c(0, 0, 100, 100)
y<-c(0, 800, 0, 800)
pp<-cbind(x, y)

plot(pp, col="transparent", xlim=c(0, 100), ylim=c(0, 800), xlab="time", ylab="Population Size (N)")
lines(Ntot[,1])
lines(Ntot[,2])
lines(Ntot[,3])
lines(Ntot[,4])

yl<-c(2, 8, 2, 8)
ppl<-cbind(x, yl)
ppl

plot(ppl, col="transparent", xlim=c(0, 100), ylim=c(2, 8), xlab="time", ylab="Log Population Size (N)")
lines(log(Ntot[,1]))
lines(log(Ntot[,2]))
lines(log(Ntot[,3]))
lines(log(Ntot[,4]))

time<-1:101

mod1<-lm(log(Ntot[,1])~time)
summary(mod1)
coef(mod1)[2]

mod2<-lm(log(Ntot[,2])~time)
summary(mod2)
coef(mod2)[2]

mod3<-lm(log(Ntot[,3])~time)
summary(mod3)
coef(mod3)[2]

mod4<-lm(log(Ntot[,4])~time)
summary(mod4)
coef(mod4)[2]

R<-c(coef(mod1)[2], coef(mod2)[2], coef(mod3)[2], coef(mod4)[2])
R

### duplication time - How much time does it take to duplicate pop size?

#t dobro = log(2)/r

r<-0.007

t.dobro = log(2)/r
t.dobro/12

### Discrete population growth

# Nt = (lambda^t)*N0

N0<-2000
Nf<-N0
lamb<-1.2
for (t in 1:12)
  {
  Nt <- (lamb^t)*N0
  NO<-Nt
  Nf<-c(Nf, Nt)
  }

NFF<-NULL
for (k in 1:length(Nf))
  {
  NFF<-c(NFF, Nf[k])
  NFF<-c(NFF, Nf[k]/2)
  }

plot(Nf)
plot(splines(NFF))
