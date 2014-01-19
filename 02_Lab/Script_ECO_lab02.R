##################################################################################################
#####       Alexandre Camargo Martensen
##################################################################################################
##################################################################################################
#####       Assignment 2 - Grizzly Bear Population Viability Analysis
##################################################################################################
##################################################################################################

# 1. (10 points) Plot the abundance of female grizzly bears through time. Use open circles as your 
# symbol on the plot and connect the symbols with a line. Remember to label your axes and include 
# a figure caption. Hint: look up the plot, points, and lines functions. 
# Describe in words the trends in abundance 1959-�‐1978.

gri<--read.table("Grizzly.csv", header=TRUE, sep=",")
gri<-gri*(-1)
names(gri)
plot(gri$year, gri$N, xlab="Years", ylab="Female Population Size")
title("Abundance of female grizzly bears 1959-1978")
lines(gri$year, gri$N)
#lines(spline(gri$year, gri$N))
## Include figure caption
## Figure caption: Abundance of female grizzly bears between 1959 and 1978 in Yelowstone

##2. (10 points) Calculate the timeseries of annual population growth rates, rt=ln(Nt/Nt-1)
##for Yellowstone grizzly bears. What is the mean population growth rate (+/-� approximate
## 95% Confidence  Intervals) for the period 1959 to 1978?

rt.tot<-NULL
for (i in 2:length(gri$N))

  {
  rt=log(gri$N[i]/gri$N[i-1])
  rt.tot<-c(rt.tot, rt)
  i<-i+1
  }

rt.tot
m<-mean(rt.tot)
m
s<-sd(rt.tot)
n<-length(gri$N)
hist(rt.tot)
plot(density(rt.tot), xlab="r's", ylab="", main="Mean population growth rate between 1959 and 1978")

q<-quantile(rt.tot, probs=c(0.025, 0.975))

abline(v=m, col="red")
abline(v=q[1], col="blue")
abline(v=q[2], col="blue")
text(0.01, 0.9, "Mean - red")
text(0.1, 0.5, "CI - blue")
text(-0.16, 0.5, "CI - blue")

# 3. (15 points) A simple deterministic model for grizzly bear population dynamics is Nt+1=Nt*exp(r), 
# where r is the average population growth rate.
# Show (with equations, not simulations) how this model can be obtained from our calculation of the 
# population growth rate.
# Using the mean population growth rate r, simulate the model for 50 years using an initial population size of 44.
# What is the final population size?
# Do it again and determine how long it will take the population to decline to 10 bears.
# Include a plot of the simulation.

?plot
plot(gri$year, gri$N)
plot(gri$year, gri$N, xlab="Years", ylab="Female Population Size", xlim=c(1964.5, 1966), ylim=c(42, 47), type="n")
title("Zoom in in the abundance graph")
lines(spline(gri$year, gri$N), lwd=3)
axis(1, label=1964, 1964)
axis(1, label=1965, 1965)
axis(1, label=1966, 1966)
axis(2)
x<-c(80, 1968)
y<-c(1969, 43)
lines(x, y, col="red", lwd=5)
a<-c(46.5, 164.8)
b<-c(45, 164.8)
b<-c(164.8, 45)
lines(a, b)

curve(sin, -2*pi, 2*pi, xlim=c(-4.8, -3.8), ylim=c(0.5, 1.15),  xlab="Time", ylab="Number of Females")

curve(sin, -2*pi, 2*pi, xlim=c(-4.8, -3.8), ylim=c(0.5, 1.15),  xaxt="n", yaxt="n", xlab="Time", ylab="Number of Females")
xs1<-c(-4.8, -4.2)
ys1<-c(1.05, 0.9)
lines(xs, ys, col="red", lwd=3)


points(-4.55, 0.985)

points(-4.36, 0.94)

xs2<-c(-4.55, -4.55)
ys2<-c(0.985, 0.93)

points(-4.55, 0.93)

xs3<-c(-4.36, -4.6)
ys3<-c(0.94, 0.94)

lines(xs2, ys2, lty=3)
lines(xs3, ys3, lty=3)

# A population 


N1<-1:44
N0<-44
for (j in 2:50)
{
  N1[j]<-N0*exp(mean(rt.tot))
  N0<-N1[j]
}

round(10.441358)
round(res)
which(round(res)==10)

i<-2
N0<-44
dd.t<-data.frame()
names(dd.t)<-c("Year", "# Females")
dd.t  
while(N0>=11)
{
  N1<-N0*exp(mean(rt.tot))
  dd<-cbind(i, N1)
  dd.t<-c(dd.t, dd)
  N0<-N1
  i<-i+1
}

dd
dd.t
i

plot(N)

# 7. (20  points)	Repeat	5	and	6	above	but	approximate	the	distribution	of	rt	with	a	 Normal	distribution	with	mean	and	
# standard	deviation	estimated	from	the	rt	values.	That	is,	the	model	is		 Nt+1	=	Nt	exp(r+εt)	
# where	r	is	the	mean	of	the	rt	values	and	εt	is	a	random	Normal	variable	with	 mean	zero	and	standard	
# deviation	estimated	from	the	rt	values.	Hint:	use	the	function	rnorm.	How	do	the	results	from	the	two	different	
# stochastic	models	 (7)	versus	(5)	compare?	
