# formula of covariance
opar <- par(no.readonly=TRUE) # save original parameters
par(mar=c(0,0,0,0)) # adjust margins to avoid text crop
plot(1:10,1:10,type="n")
text(5, 8, 
     "Kovarianz", 
     cex = 1.5, col = "blue")
text(5, 6, 
     expression(paste(s[xy], " = ", frac(1,n-1)~ sum((x[i]-bar(x))*(y[i]-bar(y)), i==0, n))), 
     cex = 1.5)
par(opar) # reestablish original setting
