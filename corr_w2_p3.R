#corr <- function(directory, threshold = 0){
#  filelist<-list.files( path=directory,pattern = ".csv", full.names = TRUE)
 # comp<-complete(directory)
  #comp<-comp[comp["nobs"]>threshold,]$id
  #corr_vect <- NULL
  
  #for(i in id){
  #  d<-read.csv(filelist[i])
   # data<-d[complete.cases(d)]
    #corr_vect <- c(corr_vect, cor(data[,"sulfate"], data[, "nitrate"]))
  #}
#return(corr_vect)
  
#}
corr <- function(directory, threshold = 0) {
  comp = complete(directory)
  ids = comp[comp["nobs"] > threshold, ]$id
  core = numeric()
  for (i in ids) {
    
    newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                             ".csv", sep = ""))
    data = newRead[complete.cases(newRead), ]
    core = c(core, cor(data$sulfate, data$nitrate))
  }
  return(core)
}