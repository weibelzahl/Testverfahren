ms <- mean(daten$satisfaction)
mh <- mean(daten$haveWant)
plot(daten$satisfaction, daten$haveWant)
abline(v = ms, col="red")
abline(h = mh, col="red")
arrows(6, mh, 6, .9, length = .1, lwd=2, col = "green", code = 3)
arrows(ms, .9, 6, .9, length = .1, lwd=2, col = "green", code = 3)

remove(ms)
remove(mh)

# daten$s_über <- daten$satisfaction > mean(daten$satisfaction)
# daten$h_über <- daten$haveWant > mean(daten$haveWant)
# table(daten$s_über, daten$h_über)
