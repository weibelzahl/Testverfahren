# show null-hypothesis and alternative hypothesis 
opar <- par(no.readonly=TRUE) # save original parameters
par(mar=c(0,0,0,0)) # adjust margins to avoid text crop
plot(1:10,1:10,type="n")
text(5, 8, 
     "ungerichtete Hypothesen\n des t-Tests\n f\374r unabh\344ngige Stichproben", 
     cex = 1.5, col = "blue")
text(5, 6, 
     expression(H[0]: mu[Handicap] == mu[Control]), 
     cex = 1.5)
text(5, 5, 
     expression(H[1]: mu[Handicap] != mu[Control]), 
     cex = 1.5)
text(5, 3, 
     expression(t == frac(mu[Handicap] - mu[Control], sqrt(frac(s[Handicap]^2, n[Handicap]) + frac(s[Control]^2, n[Control])))), 
     cex = 1.5)
par(opar) # reestablish original setting
