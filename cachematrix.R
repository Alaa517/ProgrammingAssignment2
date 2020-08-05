## Put comments here that give an overall description of what your
## functions do

## this is a special function that defines x as a matrix 
## i is defined as null, the get object returns the x which is he matrix 

makeCacheMatrix <- function(x = matrix()) {
               i <- NULL
               set <- function(y) {
                 x <- y
                 i <- NULL
                 }
               get<- function()x
              setinverse <- function(solve) i<- solve 
              getinverse <- function() solve
             list( set = set, get = get, setinverse= getinverse)
}


## Write a short comment describing this function

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
