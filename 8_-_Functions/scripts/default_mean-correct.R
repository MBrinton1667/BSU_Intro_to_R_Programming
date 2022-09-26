my_mean <- function(my_vector, rm = T) {
  sum(my_vector, na.rm = rm)/length(my_vector[!is.na(my_vector)]) 
}
