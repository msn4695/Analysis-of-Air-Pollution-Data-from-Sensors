pollutantmean <- function(directory, pollutant, id = 1:length(dir())) {
  old.dir <- getwd()
  setwd(directory)
  fnames <- dir()
  values1 <- numeric()
  for (i in 1:length(id)) {
    values1 <- append(values1, read.csv(fnames[id[i]])[[pollutant]])
  }
  setwd(old.dir)
  means <- mean(values1, na.rm=TRUE)
  return(means)
}
