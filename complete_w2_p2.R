 complete<-function(directory,id=1:332){
   filelist<-list.files( path=directory,pattern = ".csv", full.names = TRUE)
   nobs<-numeric()
   x<-for(i in id){
     sum1<-sum(complete.cases(read.csv(filelist[i])))
     nobs<-c(nobs,sum1)
   }
   mat<-data.frame(id,nobs)
   mat
 }
 
 
