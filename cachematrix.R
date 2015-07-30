##Masum's version

##A
#####Worked Example analysis

    #1 example1 makevector
    makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
            x <<- yx
            #m is NULL?
            m <<- NULL
        }
        get <- function() x
        
    #a function that sets the mean?   
        setmean <- function(mean) m <<- mean
        
    #a function that gets the mean?
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
    }
    
    
    #2  example1 makevector
    makeVector <- function(x = numeric()) {
        #a function that sets the mean?   
        set <- function(y) {
            x <<- y
            #m is NULL?
            m <- NULL
            m <<- NULL
        }
        
    #a function that gets the mean?
        get <- function() x
        
    ##set the value of the mean
        setmean <- function(mean) m <<- mean
        
    ##get the value of the mean       
        getmean <- function() m
        
        list(set = set, get = get,
             
             setmean = setmean,
             
             getmean = getmean)
    }
    
    
    ###############
    
    #example 2 cachemean
    #1
    cachemean <- function(x, ...) {
        
    #calculates the mean of the special "vector"    
    #2
        m <- x$getmean()
        
    #checks if mean exists in cache
    #If so, it gets the mean from the cache and skips the computation 
    #3
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
    #4
    #else calculate mean
        
        data <- x$get()
        
        #5  
        m <- mean(data, ...)
        
    #sets the value of the mean in the cache via the setmean function  
    #6
        x$setmean(m)
        
        m
    }
    
##B
##makeCacheMatrix
##Write the following functions:
##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
##Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.
##For this assignment, assume that the matrix supplied is always invertible.
    
    
##This function creates a special "matrix" object that can cache its inverse.
##??? Write a short comment describing this function

    makeCacheMatrix <- function(x = matrix()) {
    
    }


##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
##??? Write a short comment describing this function    

    cacheSolve <- function(x, ...) {
            ## Return a matrix that is the inverse of 'x'
    }
