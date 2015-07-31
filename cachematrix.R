##Masum's version


#function 1: makes the mx
makeMx <-function (x=matrix()) {
    
    invx<-NULL    
    #1REsets the matrix
    setmx<-function(mx) {
        mx1<<-function() mx
        invx <<-NULL
    }
    
    #2returns the matrix (mx1)
    getmx <-function() mx1    
    list(setmx=setmx,getmx=getmx)    
    }   
    
    ##3sets the matrixinv if not already in place
    setinvx <-function(matrix) {
        invx<<-solve(matrix)
        }
    
    ##4gets the matrixinv
    getinvx <-function() invx
    list(getmx=getmx,setmx=setmx,
         setinvx=setinvx,getinvx=getinvx)
}

#function 2: caches or returns the matrix inverse
cachematrixinv <- function(x, ...) {
    
    #returns the inverse cached
    m <- x$getinvx()
    if(!is.null(invx)) {
        message("getting cached matrix inverse")
        return(invx)
    }
    #else calculates the inverse
    data <- x$getmx()
    invx <- solve(data, ...)
    x$setinvx(invx)
    invx
    }
