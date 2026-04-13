#Task 1 - learning the data types in R
card_name <-"Le Mat"
card_number <- 0L #Using L to denote integer
upright <- TRUE
keywords <- c("beginnings", "spontaneity", "a leap into the unknown")
class(card_number) #returns "integer"
class(card_name) #returns "character"
class(upright) #returns "logical"
#Task 2 - learning to make and use vectors with c()
arcana_names <- c("Le Mat", "Le Bateleur", "La Papesse", "Le Pape", "L'amoureux", "La force")
length(arcana_names) #returns 6! R counts from 1 like a human.
arcana_numbers <-c(0, 1, 2, 3, 4, 5) #Actually the tarot counts from 0
arcana_numbers * 2 #First taste of R magic - vector arithmetic without loops
#Task 3 - working with named vectors
neurodivergent_scores <- c(sensory = 9, executive_function = 3, pattern_recognition = 10, emotional_intensity = 8, masking = 7)
neurodivergent_scores["sensory"] #pull data out, these operators can do a lot in R
normalised <- neurodivergent_scores / 10 #normalise all the data at once
neurodivergent_scores > 7 #return all that are greater than 7
names(neurodivergent_scores[neurodivergent_scores > 7]) #passing a logical vector as an index! Here's that R magic
