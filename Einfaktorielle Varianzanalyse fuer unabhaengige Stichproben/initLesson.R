# remove motivational message
options(swirl_is_fun = FALSE)

# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.

Daten <- data.frame(Gruppe = factor(x=c(replicate(10,1), replicate(10,2), replicate(10,3)),levels=c("1","2","3"), 
                                    labels = c("Stille","Lärm","Musik")), 
                    Erinnerung = c(c(70,57,59,60,51,30,52,62,59,57),c(41,26,28,47,47,39,50,36,48,25),c(37,47,46,55,45,57,51,60,60,51)))

                    # 1: Stille,  round(rnorm(10,52,10),0)
                    # 2: Lärm,    round(rnorm(10,42,10),0)
                    # 3: Musik,   round(rnorm(10,46,10),0)