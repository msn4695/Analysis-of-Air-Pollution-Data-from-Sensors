complete <- function(directory, id = 1:332) {
  old.dir <- getwd()
  setwd(directory)
  fnames <- dir()
  repo <- matrix(nrow=length(id),ncol=2)
  for (i in 1:length(id)) {
    tab <- read.csv(fnames[id[i]])
    good <- complete.cases(tab)
    tabc <- tab[good,]
    repo[i,1] <- fnames[id[i]]
    repo[i,2] <- nrow(tabc)
  }
  repod <- data.frame(repo)
  names(repod) <- c("id", "nobs")
  setwd(old.dir)
  return(repod)
}
