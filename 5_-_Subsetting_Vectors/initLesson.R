# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

x <- sample(c(rnorm(20), rep(NA, 20)))

outliers <- round(rnorm(1000, 10, 1), 1)