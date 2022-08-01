# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

# For compatibility with 2.2.21
.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

# Path to data
.datapath2 <- file.path(.get_course_path(),
                        'BSU_Intro_to_R_Programming', '11_-_Looking_at_Data',
                        'plant-data.txt')
# Read in data
plants <- read.csv(.datapath2, strip.white=TRUE, na.strings="")

# Remove annoying columns
.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
names(plants) <- c('Scientific_Name', 'Duration', 'Active_Growth_Period',
                   'Foliage_Color', 'pH_Min', 'pH_Max',
                   'Precip_Min', 'Precip_Max',
                   'Shade_Tolerance', 'Temp_Min_F')

# Fix factors
plants$Duration <- factor(plants$Duration)
plants$Active_Growth_Period <- factor(plants$Active_Growth_Period)
plants$Foliage_Color <- factor(plants$Foliage_Color)