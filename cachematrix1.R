##Masum's version
#2_25_2016
#825pm

    #clears matrix value stored
    invx<-NULL    
    
    ##function 1: makes the mx
    makeMx <-function (mx=matrix()) {
      
    #function2 - clear inverse, set matrix. Matrix Input by user.
    setmx<-function(y) {
      mx<<-y
      invx <<-NULL
      }
      
    #function3 - returns the matrix (mx1). Matrix Input by user.
    getmx <-function() mx
    
    #function4 - sets the matrix inverse. Matrix Input by user.
    setinvx <-function(inversemx) invx<<-solve(inversemx)
    
    ##4returns the matrix inverse. Matrix Input by user.
    getinvx <-function() invx
    
    ###output
    list(getmx=getmx,setmx=setmx,setinvx=setinvx,getinvx=getinvx)
  }

#function 2: caches or returns the matrix inverse
cachematrixinv <- function(mx, ...) {
    
    #returns the inverse cached
    invx <- mx$getinvx()

    #if inverse non-null then return stored inverse
      if(!is.null(invx)) {
        message("getting cached matrix inverse")
        return(invx)
        }

    ##else calls getmatrix()
    data <- mx$getmx()
    
    #calculates the inverse
    invx <- solve(data, ...)
    
    ##calls setinverse()
    mx$setinvx(invx)
    
    ##calls inverse
    invx
    }
