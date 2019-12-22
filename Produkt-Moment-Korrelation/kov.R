# create  kov, so user does not need to recalculate
kov <- cov(daten$satisfaction, daten$haveWant)

# formular of covariance
opar <- par(no.readonly=TRUE) # save original parameters
par(mar=c(0,0,0,0)) # adjust margins to avoid text crop
plot(1:10,1:10,type="n")
text(5, 8, 
     "Produkt-Moment-Korrelation", 
     cex = 1.5, col = "blue")
text(5, 6, 
     expression(paste(r[xy], " = ", frac(s[xy],s[x] %.% s[y]))), 
     cex = 1.5)
par(opar) # reestablish original setting