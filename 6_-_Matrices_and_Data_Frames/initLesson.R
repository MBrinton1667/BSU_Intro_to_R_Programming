# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

Cats_and_Dogs <- data.frame(Pet = factor(rep(c("Dog", "Cat"), each = 100)), IQ = round(rnorm(200, 100, 25), 0))
Cats_and_Dogs <- as.matrix(Cats_and_Dogs)
