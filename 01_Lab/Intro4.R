X=read.table('ChlorellaGrowth.txt', header=TRUE, sep=",")
X=as.matrix(X)
Light=X[,1]
L.Light=log(X[,1])
rmax=X[,2] 
L.rmax=log(X[,2])

par(mfcol=c(2,1))
plot(Light,rmax,xlab="Light intensity (uE/m2/s)", ylab="Maximum growth rate rmax (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit=lm(rmax~Light)
summary(fit); abline(fit) 

plot(L.Light,L.rmax,xlab="Log Light intensity (uE/m2/s)", ylab="Log Maximum growth rate rmax (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit2=lm(L.rmax~L.Light)
summary(fit2); abline(fit2) 
#Another option is to use logLink, altought mean(log(light)) != log(mean(light))

x11()
par(mfcol=c(1,2))
plot(Light,rmax,xlab="Light intensity (uE/m2/s)", ylab="Maximum growth rate rmax (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit=lm(rmax~Light)
summary(fit); abline(fit) 

plot(L.Light,L.rmax,xlab="Log Light intensity (uE/m2/s)", ylab="Log Maximum growth rate rmax (1/d)",pch=16) 
title(main="Data from Fussmann et al. (2000) system")
fit2=lm(L.rmax~L.Light)
summary(fit2); abline(fit2) 


# Next we get the regression equation to 'display itself' on the graph
c1=round(fit$coef[1],digits=3)   # intercept	
c2=round(fit$coef[2],digits=3) 	# slope
text(50,3,paste("rmax=",c1,"+",c2,"Light")) 

# You can use ?round, ?text and ?paste to read about these commands
# for working with plots  

