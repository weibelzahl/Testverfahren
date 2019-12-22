# remove motivational message
options(swirl_is_fun = FALSE)
# options(swirl_language = "german")
# options(swirl_is_fun = TRUE)
options(swirl_language = "german_formal")

# Put initialization code in this file. The variables you create
# here will show up in the user's workspace when he or she begins
# the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

path_to_lesson <- file.path(.get_course_path(),
                            "Testverfahren", "Produkt-Moment-Korrelation", "daten.csv")
daten <- read.csv2(path_to_lesson)
daten$id <- factor(daten$id)
