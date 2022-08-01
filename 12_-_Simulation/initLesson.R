# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.



x <- c(0.656, 0.678, 0.733, 0.752, 0.781, 0.812, 0.817, 0.838, 0.840, 0.854, 0.876, 0.880, 0.885, 0.887, 0.894, 0.943, 0.955, 0.959, 0.959, 0.961, 0.963,
                          0.970, 0.974, 0.996, 0.999, 0.999, 0.999, 0.999, 1.000, 1.000, 1.000, 1.000, 1.000, 1.013, 1.020, 1.022, 1.026, 1.031, 1.040, 1.056, 1.074, 1.076,
                          1.083, 1.088, 1.111, 1.122, 1.122, 1.124, 1.127, 1.146, 1.155, 1.155, 1.240, 1.274, 1.274, 1.339, 1.346, 1.389)


friends_dice <- function()
{
  roll <- replicate(2, sample(1:6, 1000, prob=c(0.12, 0.13, 0.07, 0.23, .22, .23), replace = T))
  roll_sum <- apply(roll, 1, sum)
  hist(roll_sum, col = "pink", ylim = c(0, 200))
}
