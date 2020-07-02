pollutantmean <- function(directory, pollutant, id = 1:332) {
  path <- paste0(getwd(),"/", directory) #this one is more general
  temp<-numeric()
  for (i in id) {
    if (i < 10) {
      data <- read.csv(paste(path,"/00", as.character(i),".csv", sep = ""), as.is = T, header = T)
      temp<-c(temp, data[[pollutant]])
    }
    else if (i < 100) {
      data <- read.csv(paste(path,"/0", as.character(i),".csv", sep = ""), as.is = T, header = T)
      temp<-c(temp, data[[pollutant]])
    }
    else{
      data <- read.csv(paste(path,"/", as.character(i),".csv", sep = ""), as.is = T, header = T)
      temp<-c(temp, data[[pollutant]])
    }
    
  }
  
  return(mean(temp, na.rm = TRUE))
}
