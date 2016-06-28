# remove motivational message
options(swirl_is_fun = FALSE)
options(swirl_language = "german")

# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.


Geschlecht <- c(replicate(40,0),replicate(40,1)) # w/1:weiblich, m/0:männlich
Reihenfolge <- c(replicate(20,0),replicate(20,1),replicate(20,0),replicate(20,1)) # 0:fröhliche Musik zuerst, 1: TM zuerst
Erinnerung.TM <- c(37,37,51,51,47,47,35,60,52,44,51,59,80,51,63,62,28,54,42,38,39,39,44,47,50,62,63,60,43,62,51,50,55,35,69,54,40,51,55,56,45,50,49,51,70,61,22,63,37,50,53,62,32,47,34,53,46,51,58,50,42,45,46,59,53,31,24,29,44,64,54,46,44,47,40,59,53,43,68,32)
Erinnerung.FM <- c(37,36,50,43,50,39,24,47,46,46,48,51,82,50,62,73,24,51,56,36,46,48,53,50,54,67,57,67,33,78,59,51,71,31,84,42,42,60,47,71,43,54,52,62,68,69,22,69,45,65,68,68,20,63,36,54,56,55,56,48,61,49,47,63,77,38,33,36,34,66,68,33,49,60,28,60,62,46,80,46)

daten <- data.frame(Geschlecht=factor(Geschlecht,levels=c("0","1"), labels = c("maennlich","weiblich")), 
                    Reihenfolge=factor(Reihenfolge, levels=c("0","1"), labels=c("FM zuerst", "TM zuerst")),
                    Erinnerung.TM, Erinnerung.FM)

remove(Geschlecht, Reihenfolge, Erinnerung.FM, Erinnerung.TM)

