# show null-hypothesis and alternative hypothesis 
opar <- par(no.readonly=TRUE) # save original parameters
par(mar=c(0,0,0,0)) # adjust margins to avoid text crop
plot(1:10,1:10,type="n")
text(5, 8, 
     "Fechnerscher Korrelationsindex", 
     cex = 1.5, col = "blue")
text(5, 6, 
     expression(paste(F, " = ", frac(n[K]-n[D],n[K]+n[D]), " = ", frac(153-85, 238), " = ", 0.29)), 
     cex = 1.5)
par(opar) # reestablish original setting
