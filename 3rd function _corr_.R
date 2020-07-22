corr <- function(directory, threshold = 0) {
  old.dir <- getwd()
  setwd(directory)
  fnames <- dir()
  corvec <- numeric()
  for (i in 1:length(fnames)) {
    tab <- read.csv(fnames[i])
    tabc <- tab[complete.cases(tab),]
    if (nrow(tabc) >= threshold & nrow(tabc) != 0) {
      cr <- cor(tabc$sulfate, tabc$nitrate)
      corvec <- append(corvec,cr)
    }
  }
  setwd(old.dir)
  return(corvec)
}
