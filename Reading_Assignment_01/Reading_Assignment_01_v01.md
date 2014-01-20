							
# <center> Reading assignment 1</center>
### <center> <i>Alexandre Camargo Martensen</i></center>
#### <center> January 19, 2014</center>


some statment [@May1974]. 

##### Example of differential equation that is solve based on a first known value.

  Xn+1 - Xn = 2Xn(1-Xn)

	If X0 = 0.1

	Xn+1 = 2Xn(1-Xn)+Xn

	Thus Xn+1 = F(Xn)

	f(x) = 2X(1-X) + x             (using X0 = 0.1 for solving the equation)


###### The R solution for the above equation:

```{r}
X<-0.1

res<-X

for (i in 1:20)
{

  X1<-2* X *(1-X) + X

  X<-X1

  res<-c(res, X1)

}

plot(res)

lines(spline(res))

```

###### Graphical solution based on Cobwebbing.

![Cobwebbing figure example - click here](https://www.dropbox.com/s/bnb748mr3n7cdgn/Screenshot%202014-01-19%2012.19.58.png)


This is an example of Cobwebbing. In the right hand side, you have the graphical solution of the equation Xn+1 = f(X). Having an starting value for x and the graphic per se, you basicly find the solution for X+1 by going up in the graphic reaching the curve, then the Y axis, with the value X+1. In the graph from the left hand side, the diagonal line (X=Y, 1 to 1 line) is added, so, it helps to find the value in the X axis, since you just need to go to the line, and then get down to the X axis. 

##### Projecting the population size

So, integrating the equation dN/dt = rN (see 02 Lab - test4.Rmd for details in how to get there), we get into the equation that can calculate the population size in any time step t.

	Nt = N0*e^rt

Where N0 is the initial population size, Nt is the population size in the time t, e is a constant (natutal log, e ~ 2.717), r is the intrinsic growth rate.

Thus, knowing the initial population size (N0), and the intrinsic growth rate (r), you can know the population size in any time step t. 


##### Discrete growth

When population doesn't growth continuously, e.g. births are all in spring, and deaths are year round. 

=> Discrete differential equation

	Nt+1 = Nt + rd*Nt
	Nt+1 = Nt(1 + rd)  => (1+rd) = lambda
	Nt+1 = lambda*Nt

Infinite increment rate

So, the solution for t years is:

	Nt = (lambda ^ t) * N0

		


 
##### The logistic growth with Carrying Capacity




