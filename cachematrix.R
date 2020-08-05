## the below two functions are written to calculate and cache the inverse matrix of x 
## the first function will return a list of functions that set and get the x matrix and its inverse.
## while the second function will return the cached inverse matrix or will calculate it-if it didn't get cached- and then cache it.

## this is a special function that defines x as a matrix 
## i is defined as null, this returns a list of ( set, get, setinverse, and getinverse) functions.

makeCacheMatrix <- function(x = matrix()) {
               i <- NULL
               set <- function(y) {
                 x <- y
                 i <- NULL
                 }
               get<- function()x
              setinverse <- function(solve) i<- solve 
              getinverse <- function() i
             list( set = set, get = get, setinverse= setinverse, getinverse= getinverse)
}


## this function returns the inverse matrix of x either from the cache or it calculates then returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          i <- x$getinverse()
          if(!is.null(i)){
                        message("getting cached data")
                        return(i)
                         }
           data <- x$get()
             i <- solve(data,...)
             x$setinverse(i)
              i
    }
