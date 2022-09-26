# You'll remember that the mean() function doesn't work if there are any
# missing data in the vector passed through it.  The same goes for the sum()
# function.  Also, in order to make it so the length function doesn't count
# NA, you have to select out the missing data for the calculation.

# To make an argument default you have to assign a specific value to it
# inside function().  We'd like to never have to worry about whether or not
# our data has missing values in it so let's make our my_mean function always
# default to na.rm = T.  So as to hopefully not confuse you, I've placed rm = T
# as an argument for our function.  All that's left is to make it so the sum
# function receives the value of rm.  

#Replace the questions marks, save the script then type submit() in the console.

my_mean <- function(my_vector, rm = T) {
  sum(my_vector, na.rm = ?????)/length(my_vector[!is.na(my_vector)]) 
}
