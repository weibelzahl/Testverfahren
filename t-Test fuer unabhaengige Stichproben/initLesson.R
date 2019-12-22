# remove motivational message
options(swirl_is_fun = FALSE)
options(swirl_language = "german")
# options(swirl_is_fun = TRUE)
# options(swirl_language = "german_formal")

# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.

Subject <- c(12, 9, 1, 5044, 6, 11, 1, 16, 1, 20, 22, 24, 26, 29, 32, 34, 36, 38, 40, 42, 44, 45, 46, 48, 50, 52, 54, 57, 59, 61, 63, 65, 37, 1, 5, 7, 10, 1, 1, 1, 21, 23, 25, 27, 30, 33, 35, 39, 41, 43, 47, 49, 51, 53, 55, 55, 58, 60, 62, 64, 66)

Cond <- c(replicate(32, 1), replicate(29, 2))

Attempted <- c(25, 25, 16, 5, 7, 15, 21, 5, 8, 10, 7, 22, 7, 21, 10, 7, 17, 8, 16, 5, 5, 10, 7, 6, 12, 16, 8,  6, 9, 10, 6, 4, 25, 3, 10, 8, 10, 11, 10, 11, 7, 17, 10, 9, 15, 7, 19, 5, 5, 11, 7, 4, 8, 4, 10, 17, 11, 16, 8, 16, 6)

Correct <- c(7,  3,  9,  2,  4,  4,  9,  1,  5,  5,  4,  6,  3, 12,  6,  3,  8,  4,  8,  2,  3,  6,  3,  4,  3,  8,  5,  4,  6,  8,  1,  1,  6,  1,  8,  6,  7,  3,  4,  7, 6, 13,  4,  6, 10,  5,  8,  1,  5,  7,  4,  2,  4,  1,  9, 10,  9, 15,  4,  9,  2)

daten <- data.frame(Subject, Cond, Attempted, Correct)

remove(Subject, Cond, Attempted, Correct)

