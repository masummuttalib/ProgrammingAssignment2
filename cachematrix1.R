##Masum's version

#function 1: makes the mx
makeMx <-function (mx=matrix()) {
    
      invx<-NULL    

      #1Resets the matrix
      setmx<-function(y) {
          mx<<-y
          invx <<-NULL
        }
    
    #2returns the matrix (mx1)
    getmx <-function() mx
    
    ##3sets the matrixinv if not already in place
    setinvx <-function(inversemx) invx<<-solve(inversemx)
    
    ##4gets the matrixinv
    getinvx <-function() invx
    list(getmx=getmx,setmx=setmx,setinvx=setinvx,getinvx=getinvx)
    
  }

#function 2: caches or returns the matrix inverse
cachematrixinv <- function(mx, ...) {
    
    #returns the inverse cached
    invx <- mx$getinvx()
    if(!is.null(invx)) {
        message("getting cached matrix inverse")
        return(invx)
      }
    #else calculates the inverse
    data <- mx$getmx()
    invx <- solve(data, ...)
    mx$setinvx(invx)
    invx
    }
